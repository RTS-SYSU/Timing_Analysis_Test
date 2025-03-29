#include "Util/UrGraph.h"


#ifndef OUR_GRAPH
#define OUR_GRAPH
/// @brief 在UrGraph基础上提供OurMethod所需数据结构
class OurGraph: public UrGraph{
public:
  OurGraph(std::vector<std::vector<std::string>> &setc,
        CL_info &cl_infor, 
        std::map<std::string, unsigned> &func2corenum1);

  // Must Data Access
  /// @brief  helper：存储ctxmi有哪些关联data访存(unsigned格式)
  /// 可供Ourmethod使用
  std::map<std::string, // 初始化时记录了除exe_cnt外信息
           std::map<CtxMI, std::vector<AccessInfo>>>
      entry2ctxmi2datainfo;

  /// @brief  helper：存储ctxmi有哪些关联data访存(AbstractAddress格式)
  /// 可供Ourmethod使用
  std::map<std::string,
           std::map<CtxMI, std::vector<TimingAnalysisPass::AbstractAddress>>>
      entry2ctxmi2data_absaddr;

  /// ctxmi的loop栈，最靠近的loop在vector头部
  std::map<
      std::string,
      std::map<CtxMI, std::vector<std::pair<const llvm::MachineLoop *, bool>>>>
      ctxmi2ps_loop_stack;
    
  /// ctxdata的loop栈
  std::map<std::string,
           std::map<CtxData,
                    std::vector<std::pair<const llvm::MachineLoop *, bool>>>>
      ctxdata2ps_loop_stack;
  // PS Instr Access(暂时废弃)
  std::map<std::string, std::map<CtxMI, PSAccessInfo>> ctxmi2ps_ai;
  // PS Data Access(暂时废弃)
  std::map<std::string, std::map<CtxData, PSAccessInfo>> ctxdata2ps_ai;
private:
  void getDataExeCntMust();
  // ===== Persistence analysis =====
  // TODO(仅用于输出)
  std::map<const llvm::MachineLoop *, TimingAnalysisPass::PersistenceScope>
      loop2ps_scope;
  /// helper: PS Scope内有哪些持久性块地址？(AbsAddr版) 在get loop
  /// stack之前需要构建 此处包含了Instr和Data
  std::map<const llvm::MachineLoop *,
           std::map<TimingAnalysisPass::AbstractAddress, bool>>
      loop2addr_isps;
  /// @brief 用于给run()写ctxmi2ps_loop_stack，返回一条CtxMI的loop stack
  /// @param CM
  /// @return
  std::vector<std::pair<const llvm::MachineLoop *, bool>>
  getGlobalLoop(CtxMI CM, const CtxMI topCM);

  /// @brief 用于给run()写ctxdata2ps_loop_stack，
  /// 返回一条CtxMI的对应访存的loop stack
  /// @param CM
  /// @return
  std::vector<std::pair<const llvm::MachineLoop *, bool>>
  getGlobalLoopData(CtxData CD);

  /// @brief 计算PS块的执行次数，暂时不使用
  unsigned getExeCntPSI(CtxMI CM);
  /// @brief 计算PS块的执行次数，暂时不使用
  unsigned getExeCntPSD(CtxData CD);
  // ===== end Persistence analysis =====
  void print_our_cfg(unsigned core, const std::string &function);
};

#endif