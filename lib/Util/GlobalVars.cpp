#include "Util/GlobalVars.h"
#include "AnalysisFramework/AnalysisDriver.h"
#include "LLVMPasses/DispatchMemory.h"
#include "Memory/CacheTraits.h"
#include "Memory/AbstractCache.h"
#include "Memory/LruMaxAgeAbstractCache.h"
#include "Memory/LruMinAgeAbstractCache.h"
#include "PathAnalysis/LoopBoundInfo.h"
#include "PreprocessingAnalysis/AddressInformation.h"
#include "Util/muticoreinfo.h"
#include "llvm/IR/Function.h"
#include <string>
#include <vector>

Multicoreinfo mcif(0);
std::vector<std::string> conflicFunctions;
bool isBCET = false;
int IMISS = 0;
int DMISS = 0;
int L2MISS = 0;
int STBUS = 0;
int BOUND = 0;


std::map<std::string, std::set<functionaddr*>> functiontofs;
std::map<std::string, functionaddr *> getfunctionaddr;
std::map<std::string, unsigned> func2corenum; // 冗余但是先写着
std::set<AddrCL> IAddrCList;
std::set<AddrCL> DAddrCList;

TimingAnalysisPass::AddressInformation *glAddrInfo = NULL;
std::set<const MachineBasicBlock *> mylist;

unsigned getbound(const MachineBasicBlock *MBB,
                  const TimingAnalysisPass::Context &ctx) {
  for (const MachineLoop *loop :
       TimingAnalysisPass::LoopBoundInfo->getAllLoops()) {
    if (MBB->getParent() == loop->getHeader()->getParent() &&
        loop->contains(MBB)) {
      if (TimingAnalysisPass::LoopBoundInfo->hasUpperLoopBound(
              loop, TimingAnalysisPass::Context())) {
        return TimingAnalysisPass::LoopBoundInfo->getUpperLoopBound(
            loop, TimingAnalysisPass::Context());
      }
    }
  }
  return 1;
}

void celectaddr(const MachineBasicBlock *MBB,
                const TimingAnalysisPass::Context &ctx) {
  if (mylist.count(MBB) == 0) {
    if (SPersistenceA && L2CachePersType == PersistenceType::ELEWISE) {
      // jjy：持久性内存块争用分析
      int time = getbound(MBB, ctx);
      // int time = 1;
      //   mcif.addaddress(AnalysisEntryPoint, addrIlist, time);
    } else {
      // jjy：普通争用分析
      //   for (auto &al : addrIlist) {
      //     mcif.addaddress(AnalysisEntryPoint, al);
      //   }
    }
    mylist.insert(MBB);
  }
}

void writeAclToMcif(){
  for(const auto& tmp_acl: IAddrCList){
    auto itv = tmp_acl.address.getAsInterval();
    const TimingAnalysisPass::Address tmp_upper_cache_line
        = itv.upper() & ~(TimingAnalysisPass::l2cacheConf.LINE_SIZE - 1);
    const TimingAnalysisPass::Address tmp_lower_cache_line
        = itv.lower() & ~(TimingAnalysisPass::l2cacheConf.LINE_SIZE - 1);
    assert(tmp_lower_cache_line==tmp_upper_cache_line);
    if(TimingAnalysisPass::StaticAddrProvider->hasMachineInstrByAddr(itv.lower())){
      const llvm::MachineInstr* miptr = // got mi
        TimingAnalysisPass::StaticAddrProvider->getMachineInstrByAddr(itv.lower());
      auto tokenlist = tmp_acl.ctx.getTokenList();
      std::vector<const llvm::MachineInstr *> CallSites;
      std::string tmp_entry = "";
      unsigned tmp_entry_corenum = -1;
      for (const auto& tmptoken : tokenlist) { // got callsites
        if(tmptoken->getType()==TimingAnalysisPass::PartitionTokenType::CALLSITE){
          TimingAnalysisPass::PartitionTokenCallSite* cstoken 
            = dynamic_cast<TimingAnalysisPass::PartitionTokenCallSite*>(tmptoken);
          if(!cstoken){
            assert(0 && "fail to convert token into callsite token");
          }
          const llvm::MachineInstr* callsite = cstoken->getCallSite();
          CallSites.push_back(callsite);
        }else if(tmptoken->getType()==TimingAnalysisPass::PartitionTokenType::FUNCALLEE){
          if(tmp_entry==""){
            TimingAnalysisPass::PartitionTokenFunCallee* cetoken 
              = dynamic_cast<TimingAnalysisPass::PartitionTokenFunCallee*>(tmptoken);
            tmp_entry = cetoken->getCallee()->getName().str();
            tmp_entry_corenum = func2corenum[tmp_entry]; // got corenum & entry
          }
        }
      }
      CtxMI tmpCM;
      tmpCM.MI = miptr;
      tmpCM.CallSites = CallSites;
      mcif.addClass(tmp_entry_corenum, tmp_entry, tmpCM, tmp_acl.CL, 1);
    }else{
      assert(itv.lower()==0 && "why we have an addr without mi?");
    }
  }
}