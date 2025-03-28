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
  // TODO delete
  // 暂存ctxmi的access info，这里几个函数用于计算执行次数
  std::map<unsigned, std::map<std::string, // core, function, ctxmi -> xclass
                              std::map<CtxMI, AccessInfo>>>
      ctxmi_miai;
  void getDataExeCntMust();
  /*
      搞不了自底向上，搞自顶向下也是ok，在一个函数的所有loop里搜，搜到此BB在此loop里即可取
    优先取更深层的loop；一个函数多个循环是可以的，一个Basic
    Block足以定位哪个循环
      递归函数：一个CM负责处理自己所在函数的循环，即处理一层token，如果多层，外层交给callsite
    处理。于是我们可以处理任意层函数和任意层循环。
      一个local函数中，loop再多也就是个森林，通向我们要寻找的那个BB路径是唯一的。
  */
  unsigned getGlobalUpBd(CtxMI CM);

  unsigned bd_helper1(const llvm::MachineBasicBlock *MBB,
                      const llvm::MachineLoop *Loop);

  unsigned bd_helper2(const llvm::MachineLoop *Loop);
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