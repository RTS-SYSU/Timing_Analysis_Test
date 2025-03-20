#ifndef JJY
#define JJY

#include "Options.h"
#include "Util/CLinfo.h"
#include "Util/PersistenceScope.h"
#include "Util/Zhangmethod.h"
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
            for (std::pair<const CtxMI, AccessInfo> &tmp_pair : 
              tmp_ur.mi2xclass) {
              CtxMI tmp_cm = tmp_pair.first;
              // handling instruction access
              BlockInfo bi_res(TimingAnalysisPass::StaticAddrProvider->getAddr(
                                   tmp_cm.MI),
                               tmp_pair.second.x, INT_MAX,
                               tmp_pair.second.classification);
              ur_res.push_back(bi_res); // this is an instr access
              // handling data access
              for(auto &tmp_d_ai: zm.entry2ctxmi2datainfo[f_name][tmp_cm]){
                BlockInfo d_bi_res(
                  tmp_d_ai.data_addr,
                  tmp_d_ai.x,
                  tmp_d_ai.age,
                  tmp_d_ai.classification
                );
                ur_res.push_back(d_bi_res); // this is an line size
              }
              // handling PS instruction access
              PSAccessInfo instr_ps_acc = zm.ctxmi2ps_ai[f_name][tmp_cm];
              BlockInfo ps_bi_res(TimingAnalysisPass::StaticAddrProvider
                ->getAddr(tmp_cm.MI),
                instr_ps_acc.exe_cnt, instr_ps_acc.cs_size,
                TimingAnalysisPass::dom::cache::CL_BOT);
              ur_res.push_back(ps_bi_res);
              // handling PS data access
              for(TimingAnalysisPass::AbstractAddress tmp_abs_addr
                :zm.entry2ctxmi2data_absaddr[f_name][tmp_cm]){
                  CtxData tmp_cd;
                  tmp_cd.ctx_mi = tmp_cm;
                  tmp_cd.data_addr = tmp_abs_addr;
                PSAccessInfo instr_d_ps_acc = zm.ctxdata2ps_ai[f_name][tmp_cd];
                BlockInfo ps_d_bi_res(
                  instr_ps_acc.address,
                  instr_ps_acc.exe_cnt, 
                  instr_ps_acc.cs_size,
                  TimingAnalysisPass::dom::cache::CL_BOT);
                ur_res.push_back(ps_d_bi_res);
              }
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