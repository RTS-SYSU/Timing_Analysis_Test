#ifndef JJY
#define JJY
#include "LLVMPasses/StaticAddressProvider.h"
#include "Options.h"
#include "Util/CLinfo.h"
#include "Util/PersistenceScope.h"
#include "Zhangmethod.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineLoopInfo.h"
#include <climits>
#include <vector>

struct BlockInfo {
  unsigned address;
  unsigned exe_cnt; //执行次数
  int age;     // 年龄，非持久性块使用
  int cs_size; // 冲突集，持久性块专用
  TimingAnalysisPass::dom::cache::Classification cl;
  BlockInfo() : cs_size(INT_MAX) {}
  BlockInfo(unsigned addr, unsigned cnt, int a,
            TimingAnalysisPass::dom::cache::Classification c,
            int sz = INT_MAX) {
    this->address = addr;
    this->exe_cnt = cnt;
    this->age = a;
    this->cs_size = sz;
    this->cl = c;
  }
};

class OurM {
public:
  typedef std::vector<BlockInfo> UR;
  typedef std::vector<UR> Ceop;
  typedef std::vector<Ceop> Ceops;
  std::map<std::string, Ceops> f2ceops;

  OurM(Zhangmethod zm, CL_info &cl_infor) {
    // pre processing of PS block
    std::map<const llvm::MachineLoop *, TimingAnalysisPass::PersistenceScope>
        tmp_loop2scope;
    for (auto &tmp_scope : cl_infor.AddrPSList) {
      tmp_loop2scope[tmp_scope.first.loop] =
          tmp_scope.first; // we make loop public
    }
    for (auto &tmp_core : zm.CEOPs) {
      unsigned core_num = tmp_core.first;
      // FIXME, core_num is nor used now
      for (auto &tmp_task : tmp_core.second) {
        std::string f_name = tmp_task.first;
        Ceops ceops_res;
        for (auto &tmp_ceop : tmp_task.second) {
          Ceop ceop_res;
          for (auto &tmp_ur : tmp_ceop.URs) {
            UR ur_res;
            // handling PS access
            std::set<llvm::MachineLoop *> tmp_loop = loop_helper(tmp_ur);
            std::set<AddrPS> tmp_ps_blocks;
            if (!tmp_loop.empty()) {

              //   TimingAnalysisPass::PersistenceScope tmp_ps =
              //       tmp_loop2scope[tmp_loop];
              //   tmp_ps_blocks = cl_infor.AddrPSList[tmp_ps];
            }
            for (auto &tmp_pair : tmp_ur.mi2xclass) {
              // handling instruction access
              BlockInfo bi_res(TimingAnalysisPass::StaticAddrProvider->getAddr(
                                   tmp_pair.first.MI),
                               tmp_pair.second.x, INT_MAX,
                               tmp_pair.second.classification);
              // TODO PS is not handle, data access is not handle
              ur_res.push_back(bi_res);
            }
            ceop_res.push_back(ur_res);
          }
          ceops_res.push_back(ceop_res);
        }
        f2ceops[f_name] = ceops_res;
      }
    }
  }

private:
  /*get the outmost loop in the same function, so that we can identify an ps
   * scope*/
  std::set<llvm::MachineLoop *> loop_helper(const UnorderedRegion) {}
};

#endif