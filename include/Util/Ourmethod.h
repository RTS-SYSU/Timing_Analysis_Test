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
              std::vector<BlockInfo> list =
                  getPS(tmp_pair.first, zm.ctxmi2ps_loop_stack,
                        cl_infor.AddrPSList, tmp_pair.second.classification);
              BlockInfo bi_res(addr, tmp_pair.second.x, INT_MAX,
                               tmp_pair.second.classification);
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

  // std::set<llvm::MachineLoop *> loop_helper(const MachineInstr *MI) {}

  std::vector<BlockInfo>
  getPS(const CtxMI &MI,
        std::map<
            std::string,
            std::map<CtxMI,
                     std::vector<std::pair<const llvm::MachineLoop *, bool>>>>
            ctxmi2ps_loop_stack,
        std::map<TimingAnalysisPass::PersistenceScope, std::set<AddrPS>>
            &AddrPSList,
        TimingAnalysisPass::dom::cache::Classification cl) {
    std::vector<BlockInfo> res;
    // handling PS access
    std::vector<std::pair<const llvm::MachineLoop *, bool>> st;
    for (auto &entry : ctxmi2ps_loop_stack) {
      for (auto &list : entry.second) {
        if (entry.second.find(MI) != entry.second.end()) {
          st = entry.second[MI];
          break;
        }
      }
    }
    int x = 1;
    int CS = INT_MAX;
    unsigned addr = TimingAnalysisPass::StaticAddrProvider->getAddr(MI.MI);
    // 使用普通索引倒序遍历
    for (int i = st.size() - 1; i >= 0; --i) {
      std::pair<const llvm::MachineLoop *, bool> &loop = st[i];
      if (loop.second) {
        for (auto &scop : AddrPSList) {
          if (scop.first.loop == loop.first) {
            for (const AddrPS &ps : scop.second) {
              if (ps.address.getAsInterval().lower() == addr && ps.LEVEL == 2) {
                CS = ps.CS_size; // 在层1上持久的不计
                break;
              }
            }
            break;
          }
        }
        if (TimingAnalysisPass::LoopBoundInfo->hasUpperLoopBound(
                loop.first, TimingAnalysisPass::Context())) {
          int b = TimingAnalysisPass::LoopBoundInfo->getUpperLoopBound(
              loop.first, TimingAnalysisPass::Context());
          if (b - 1 > 0) {
            x *= b - 1;
          }
        }
        res.emplace_back(BlockInfo(addr, x, -1, cl, CS));
      }
    }
    return res;
  }
};

#endif