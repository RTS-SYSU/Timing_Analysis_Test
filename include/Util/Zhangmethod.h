#ifndef ZHANGWEI_M
#define ZHANGWEI_M

#include "Util/CLinfo.h"
#include "Util/Options.h"
#include "Util/UrGraph.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineLoopInfo.h"
#include <map>
#include <string>
#include <utility>
#include <vector>

#include "LLVMPasses/MachineFunctionCollector.h" // 由函数名找函数
#include "LLVMPasses/StaticAddressProvider.h"    // mi -> addr
// #include "LLVMPasses/DispatchMemory.h" // cacheconfig

#include "Memory/Classification.h" // CL_MISS/UNKONWN/HIT
#include "PathAnalysis/LoopBoundInfo.h"

#include "Util/Util.h"
#include "llvm/Support/FileSystem.h" // 输出ur-cfg图片
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <iostream>

class Zhangmethod {
public:
  Zhangmethod() {}
  Zhangmethod(UrGraph urgg) {}
  // CoreNum -> vector of function
  std::vector<std::vector<std::string>> coreinfo;
  // Must Instr Access
  std::map<unsigned, std::map<std::string, std::vector<CEOP>>> CEOPs;
  std::map<unsigned, std::map<std::string, unsigned>> currWcetInter;
  std::map<unsigned, std::map<std::string, unsigned>> currWcetIntra;

  /// helper: 第一轮迭代，直接返回所有能冲突的函数(生命周期迭代)
  std::vector<std::string> getInitConflictFunction(unsigned core,
                                                   const std::string &function);
  /// 计算UR，计算张伟WCEET
  void run(CL_info &cl_infor);

private:
  // 注意从0还是1开始计数,目前0,见main; FIXME这里参数有点冗余;
  // TODO需要数据cache分析
  unsigned getFValue(unsigned localCore, CEOP localPath, unsigned localUR,
                     unsigned interCore, CEOP interPath, unsigned interUR);

  // helper function
  unsigned mi2cacheIndex(const llvm::MachineInstr *mi) {
    unsigned tmp_addr = TimingAnalysisPass::StaticAddrProvider->getAddr(mi);
    return (tmp_addr / L2linesize) % NN_SET;
    // line_size为64byte的话，低6位地址是offset；1024set的话，再过10位是index
  }

  // void addClass(unsigned core, std::string function, CtxMI mi,
  //               TimingAnalysisPass::dom::cache::Classification
  //               classification, unsigned x // 目前收集的位置没有x信息所以闲置
  // ) {
  //   ctxmi_class[core][function][mi] = classification;
  //   return;
  // }
};

#endif