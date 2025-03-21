#ifndef JJY
#define JJY

#include "Options.h"
#include "Util/CLinfo.h"
#include "Util/PersistenceScope.h"
#include "Util/Zhangmethod.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineLoopInfo.h"
#include <climits>
#include <cstdint>
#include <vector>

struct BlockInfo {
  unsigned address;
  unsigned exe_cnt; // 执行次数
  int age;          // 年龄，非持久性块使用
  int cs_size;      // 冲突集，持久性块专用
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
            for (auto &tmp_pair : tmp_ur.mi2xclass) {
              unsigned addr = TimingAnalysisPass::StaticAddrProvider->getAddr(
                  tmp_pair.first.MI);
              int CS = INT_MAX;
              // handling PS access
              // for (auto &psB : tmp_ps_blocks) {
              //   if (psB.address.getAsInterval().lower() == addr) {
              //     CS = psB.CS_size;
              //     break;
              //   }
              // }
              BlockInfo bi_res(addr, tmp_pair.second.x, INT_MAX,
                               tmp_pair.second.classification, CS);

              ur_res.push_back(bi_res);
            }
            // TODO PS is not handle, data access is not handle

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
  /// ctxmi的loop栈，最靠近的loop在vector头部
  std::map<
      std::string,
      std::map<CtxMI, std::vector<std::pair<const llvm::MachineLoop *, bool>>>>
      ctxmi2ps_loop_stack;
  /// ctxdata的loop栈
  // std::map<std::string,
  //          std::map<CtxData,
  //                   std::vector<std::pair<const llvm::MachineLoop *, bool>>>>
  //     ctxdata2ps_loop_stack;

  std::set<llvm::MachineLoop *> loop_helper(const MachineInstr *MI) {}

  std::set<AddrPS> getPS(
      const UnorderedRegion ur,
      std::map<TimingAnalysisPass::PersistenceScope, std::set<AddrPS>> PSlist) {
    // handling PS access
    std::set<llvm::MachineLoop *> tmp_loop = loop_helper(ur);
    std::set<AddrPS> tmp_ps_blocks;
    for (llvm::MachineLoop *loop : tmp_loop) {
      for (auto &scop : PSlist) {
        if (scop.first.loop == loop) {
          for (const AddrPS &ps : scop.second) {
            if (ps.LEVEL == 2) {
              tmp_ps_blocks.insert(ps);
            }
          }
          break;
        }
      }
    }
    return tmp_ps_blocks;
  }
};

#endif