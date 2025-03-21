#ifndef ZHANGWEI_M
#define ZHANGWEI_M

#include "Util/CLinfo.h"
#include "Util/Options.h"
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
/*
  MI + 完整的函数调用栈，可以在UR-CFG上唯一标识一个MI
*/
class CtxMI {
public:
  const llvm::MachineInstr *MI;
  std::vector<const llvm::MachineInstr *> CallSites;
  CtxMI(){
    MI = nullptr;
  }

  bool operator==(const CtxMI &other) const {
    return MI == other.MI && CallSites == other.CallSites;
  }
  bool operator!=(const CtxMI &other) const { return !(*this == other); }
  bool operator<(const CtxMI &other) const { // 为了能作为map的键
    if (MI != other.MI) {
      return MI < other.MI;
    }
    return CallSites < other.CallSites;
  }
  friend std::ostream &operator<<(std::ostream &os, const CtxMI &tmpCM) {
    os << "[" << std::endl;
    unsigned tmpAddr =
        TimingAnalysisPass::StaticAddrProvider->getAddr(tmpCM.MI);
    os << "MI's Addr:";
    TimingAnalysisPass::printHex(os, tmpAddr);
    os << std::endl;
    os << "With Call Context:" << std::endl;
    for (auto &tmpCS : tmpCM.CallSites) {
      os << "  " << TimingAnalysisPass::getMachineInstrIdentifier(tmpCS)
         << std::endl;
    }
    os << "]" << std::endl;
    return os;
  }
  std::vector<CtxMI> getSucc() {
    std::vector<CtxMI> retSucc;

    // 我们已经消除了伪指令，不会有遍历伪指令后继者的情况
    assert((!MI->isTransient()) && "We should not see transient instr here");

    // call 和 return(嵌入处理)
    auto &cg = TimingAnalysisPass::CallGraph::getGraph();
    if (MI->isCall() && !cg.callsExternal(MI)) {
      for (const auto *callee : cg.getPotentialCallees(MI)) {
        const MachineBasicBlock *calleeBeginBB = &*callee->begin();
        const llvm::MachineInstr *calleeBeginMI = &(calleeBeginBB->front());
        assert((!calleeBeginMI->isTransient()) &&
               "First Instr of func shouldn't be transient");
        CtxMI succCM; // 继承了全部调用者，而且再加上自己
        succCM.MI = calleeBeginMI;
        assert(CallSites == this->CallSites && "Just Want to make sure");
        succCM.CallSites = CallSites;
        succCM.CallSites.push_back(MI);
        retSucc.push_back(succCM);
      }
      return retSucc;
    }
    if (MI->isReturn()) {
      if (CallSites.size() > 0) { // 针对main无调用者
        const llvm::MachineInstr *callsite = CallSites.back();
        const auto *callsiteMBB = callsite->getParent(); // 这里回到了call语句
        // 但我们需要call的下一条指令(call不会是Basic Block里最后一条指令)
        auto it = std::find_if(callsiteMBB->begin(), callsiteMBB->end(),
                               [callsite](const MachineInstr &Instr) {
                                 return &Instr == callsite;
                               });
        if (it != callsiteMBB->end() &&
            std::next(it) !=
                callsiteMBB->end()) { // 包含了下一条是MBB最后一条的情况了
          const llvm::MachineInstr *targetMI = &*(std::next(it));
          // 从源头消除伪指令。我假设transient不会出现在BB尾
          if (targetMI->isTransient()) {
            auto tmp_pair = transientHelper(callsiteMBB, targetMI);
            targetMI = tmp_pair.second;
          }
          CtxMI succCM; // 退一次栈
          succCM.MI = targetMI;
          succCM.CallSites = CallSites;
          succCM.CallSites.pop_back();
          retSucc.push_back(succCM);
        } else {
          assert(0 && "This will not happend");
        }
      }
      return retSucc;
    }

    const llvm::MachineBasicBlock *MBB = MI->getParent();
    // 可能两种情况，MBB内下一条MI，或者MBB最后一条MI到后继MBB的第一条MI
    if (MI == &(MBB->back())) {
      for (auto succit = MBB->succ_begin(); succit != MBB->succ_end();
           ++succit) {
        const llvm::MachineBasicBlock *targetMBB = *succit;
        const llvm::MachineInstr *targetMI = &(targetMBB->front());
        if (targetMI->isTransient()) {
          auto tmp_pair = transientHelper(targetMBB, targetMI);
          targetMI = tmp_pair.second;
        }
        CtxMI succCM;
        succCM.MI = targetMI;
        succCM.CallSites = CallSites;
        retSucc.push_back(succCM);
      }
    } else {
      const llvm::MachineInstr *tmpMI = MI;
      auto it = std::find_if(
          MBB->begin(), MBB->end(),
          [tmpMI](const MachineInstr &Instr) { return &Instr == tmpMI; });
      if (it != MBB->end() && std::next(it) != MBB->end()) {
        const llvm::MachineInstr *targetMI = &*(std::next(it));
        // 从源头消除伪指令
        // 我假设transient不会出现在BB尾
        if (targetMI->isTransient()) {
          auto tmp_pair = transientHelper(MBB, targetMI);
          targetMI = tmp_pair.second;
        }
        CtxMI succCM;
        succCM.MI = targetMI;
        succCM.CallSites = CallSites;
        retSucc.push_back(succCM);
      }
    }
    return retSucc;
  }

  std::vector<CtxMI> getSuccWithTransient() { // useless
    std::vector<CtxMI> retSucc;
    // call 和 return(嵌入处理)
    auto &cg = TimingAnalysisPass::CallGraph::getGraph();
    if (MI->isCall() && !cg.callsExternal(MI)) {
      for (const auto *callee : cg.getPotentialCallees(MI)) {
        const MachineBasicBlock *calleeBeginBB = &*callee->begin();
        const llvm::MachineInstr *calleeBeginMI = &(calleeBeginBB->front());
        CtxMI succCM; // 继承了全部调用者，而且再加上自己
        succCM.MI = calleeBeginMI;
        assert(CallSites == this->CallSites && "Just Want to make sure");
        succCM.CallSites = CallSites;
        succCM.CallSites.push_back(MI);
        retSucc.push_back(succCM);
      }
      return retSucc;
    }
    if (MI->isReturn()) {
      if (CallSites.size() > 0) { // 针对main无调用者
        const llvm::MachineInstr *callsite = CallSites.back();
        const auto *callsiteMBB = callsite->getParent(); // 这里回到了call语句
        // 但我们需要call的下一条指令(call不会是Basic Block里最后一条指令)
        auto it = std::find_if(callsiteMBB->begin(), callsiteMBB->end(),
                               [callsite](const MachineInstr &Instr) {
                                 return &Instr == callsite;
                               });
        if (it != callsiteMBB->end() &&
            std::next(it) !=
                callsiteMBB->end()) { // 包含了下一条是MBB最后一条的情况了
          const llvm::MachineInstr *targetMI = &*(std::next(it));
          CtxMI succCM; // 退一次栈
          succCM.MI = targetMI;
          succCM.CallSites = CallSites;
          succCM.CallSites.pop_back();
          retSucc.push_back(succCM);
        } else {
          assert(0 && "This will not happend");
        }
      }
      return retSucc;
    }

    const llvm::MachineBasicBlock *MBB = MI->getParent();
    // 可能两种情况，MBB内下一条MI，或者MBB最后一条MI到后继MBB的第一条MI
    if (MI == &(MBB->back())) {
      for (auto succit = MBB->succ_begin(); succit != MBB->succ_end();
           ++succit) {
        const llvm::MachineBasicBlock *targetMBB = *succit;
        const llvm::MachineInstr *targetMI = &(targetMBB->front());
        CtxMI succCM;
        succCM.MI = targetMI;
        succCM.CallSites = CallSites;
        retSucc.push_back(succCM);
      }
    } else {
      const llvm::MachineInstr *tmpMI = MI;
      auto it = std::find_if(
          MBB->begin(), MBB->end(),
          [tmpMI](const MachineInstr &Instr) { return &Instr == tmpMI; });
      if (it != MBB->end() && std::next(it) != MBB->end()) {
        const llvm::MachineInstr *targetMI = &*(std::next(it));
        CtxMI succCM;
        succCM.MI = targetMI;
        succCM.CallSites = CallSites;
        retSucc.push_back(succCM);
      }
    }
    return retSucc;
  }

private:
  // 跳过transient的办法就是拿到它的第一个非transient后继(可能递归执行)
  // 目前只考虑单个transient唯一后继的情况
  std::pair<const llvm::MachineBasicBlock *, const llvm::MachineInstr *>
  transientHelper(const llvm::MachineBasicBlock *MBB,
                  const llvm::MachineInstr *MI) {
    if (!MI->isTransient()) {
      return std::make_pair(MBB, MI);
    }
    assert((MI != &(MBB->back())) &&
           "I assume transient instr isn't last instr of bb, but this "
           "indicates I am wrong");
    auto it =
        std::find_if(MBB->begin(), MBB->end(),
                     [MI](const MachineInstr &Instr) { return &Instr == MI; });
    if (it != MBB->end() && std::next(it) != MBB->end()) {
      const llvm::MachineInstr *targetMI = &*(std::next(it));
      return transientHelper(MBB, targetMI);
    }
  }
};

class CtxData {
public:
  CtxMI ctx_mi;
  TimingAnalysisPass::AbstractAddress data_addr;
  CtxData()
  :data_addr(TimingAnalysisPass::AbstractAddress(unsigned(0))){}
  bool operator==(const CtxData &other) const {
    return ctx_mi == other.ctx_mi && data_addr == other.data_addr;
  }
  bool operator!=(const CtxData &other) const { return !(*this == other); }
  bool operator<(const CtxData &other) const { // 为了能作为map的键
    if (ctx_mi != other.ctx_mi) {
      return ctx_mi < other.ctx_mi;
    }
    return data_addr < other.data_addr;
  }
};

class AccessInfo {
public:
  unsigned x; // 执行次数
  TimingAnalysisPass::dom::cache::Classification classification;
  int age;
  unsigned data_addr; // only for data access
  AccessInfo()
      :x(1), 
      classification(TimingAnalysisPass::dom::cache::CL_BOT), 
      age(INT_MAX),
      data_addr(0)
    {}
  friend std::ostream &operator<<(std::ostream &os, const AccessInfo &AI) {
    os << "[addr_0x" << std::hex << AI.data_addr << 
    "_cl_" << AI.classification << "_age_" << AI.age 
    << "_execnt_" << AI.x <<"]\n";
    return os;
  }
};
// 暂时废弃
struct PSAccessInfo {
  unsigned exe_cnt;
  int cs_size;
  unsigned address; 
  PSAccessInfo()
      :exe_cnt(0), 
      cs_size(INT_MAX),
      address(0)
    {}
};

/// 提供 ZW paper f函数运算所需的信息的查找方式
class UnorderedRegion {
public:
  std::map<CtxMI, AccessInfo> mi2xclass;
};

class CEOP {
public:
  std::vector<UnorderedRegion> URs; // 路径上的UR(按顺序)
  // 这里已经包含了排序信息，即UR编号
};

class Zhangmethod {
public:
  Zhangmethod() {}
  Zhangmethod(std::vector<std::vector<std::string>> &setc, CL_info &cl_infor,
              std::map<std::string, unsigned> &func2corenum1);
  /// helper: 第一轮迭代，直接返回所有能冲突的函数(生命周期迭代)
  std::vector<std::string>
  getInitConflictFunction(unsigned core, const std::string &function);
  /// 计算UR，计算张伟WCEET
  void run(CL_info &cl_infor);

  // Must Instr Access
  std::map<unsigned, std::map<std::string, std::vector<CEOP>>>
      CEOPs; // 各个task的CEOP集合(别set了，比较函数不好写)
  // Must Data Access
  /// @brief  helper：存储ctxmi有哪些关联data访存(unsigned格式)
  /// 可供Ourmethod使用
  std::map<std::string, // 初始化时记录了除exe_cnt外信息
    std::map<CtxMI, std::vector<AccessInfo>>> entry2ctxmi2datainfo;
  /// @brief  helper：存储ctxmi有哪些关联data访存(AbstractAddress格式)
  /// 可供Ourmethod使用
  std::map<std::string, 
    std::map<CtxMI, std::vector
      <TimingAnalysisPass::AbstractAddress>>> entry2ctxmi2data_absaddr;
  /// ctxmi的loop栈，最靠近的loop在vector头部
  std::map<std::string,
    std::map<CtxMI, std::vector<
      std::pair<const llvm::MachineLoop*, bool>>>> ctxmi2ps_loop_stack;
  /// ctxdata的loop栈
  std::map<std::string,
    std::map<CtxData, std::vector<
      std::pair<const llvm::MachineLoop*, bool>>>> ctxdata2ps_loop_stack;
  // PS Instr Access(暂时废弃)
  std::map<std::string,
    std::map<CtxMI, PSAccessInfo>> ctxmi2ps_ai;
  // PS Data Access(暂时废弃)
  std::map<std::string,
    std::map<CtxData, PSAccessInfo>> ctxdata2ps_ai;
private:    
  // CoreNum -> vector of function
  std::vector<std::vector<std::string>> coreinfo;
// ===== Persistence analysis =====
  // TODO 废弃
  std::map<const llvm::MachineLoop *, TimingAnalysisPass::PersistenceScope>
    loop2ps_scope;
  /// helper: PS Scope内有哪些持久性块地址？(AbsAddr版) 在get loop stack之前需要构建
  /// 此处包含了Instr和Data
  std::map<const llvm::MachineLoop *, std::map<
    TimingAnalysisPass::AbstractAddress, bool>>
    loop2addr_isps;
// ===== end Persistence analysis =====
  // for metrics
  std::map<unsigned, std::map<std::string, unsigned>> currWcetIntra;
  std::map<unsigned, std::map<std::string, unsigned>>
      currWcetInter; // 目前各Task的WCEET，迭代更新
  // TODO: 需要初始化
  std::vector<std::map<std::string, std::pair<unsigned, unsigned>>>
      intraBWtime; // 单核BW
  // 拿到MachineLoop的信息，这样我就可以通过MBB直接得到其外层循环，然后得到执行次数；
  // 需要先从LoopBoundInfoPass偷到这个信息
  // std::map<std::string, MachineLoopInfo> f2MLI; //
  // 算了目前这个设计上有点麻烦，暂时不采用

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
  //               TimingAnalysisPass::dom::cache::Classification classification,
  //               unsigned x // 目前收集的位置没有x信息所以闲置
  // ) {
  //   ctxmi_class[core][function][mi] = classification;
  //   return;
  // }

  // module1: 暂存对一个task的UR分析数据，对应oi-wiki tarjan算法
  std::map<CtxMI, unsigned> dfn;
  std::map<CtxMI, unsigned> low;
  unsigned dfncnt;
  std::map<unsigned, CtxMI> ur_stack;
  std::map<CtxMI, unsigned> in_stack;
  unsigned stack_pt;
  std::map<CtxMI, unsigned> mi_ur;      // MI所在ur_id
  std::map<unsigned, unsigned> ur_size; // 指含有多少条MI
  unsigned ur_id; // 强连通分量号，这个序号应该没有什么含义

  // module2: 新图，UR的出入边包含原来属于UR的MI的所有出入边
  std::map<unsigned, std::vector<unsigned>> ur_graph;
  std::map<unsigned, std::vector<CtxMI>> ur_mi; // ur内部的MI没有顺序

  // module3： 除了这个module其它3个module都是暂存的
  std::map<unsigned,
           std::map<std::string,
                    std::map<const llvm::MachineInstr *,
                             TimingAnalysisPass::dom::cache::Classification>>>
      mi_class; // aborted
  // std::map<
  //     unsigned,
  //     std::map<std::string, // 先存下分类信息
  //              std::map<CtxMI, TimingAnalysisPass::dom::cache::Classification>>>
  //     ctxmi_class;
  std::map<unsigned, std::map<std::string, // core, function, ctxmi -> xclass
                              std::map<CtxMI, AccessInfo>>>
      ctxmi_miai;
  unsigned cur_core;
  std::string cur_func;

  // module: CEOP
  std::vector<UnorderedRegion> tmpPath; // 暂存UR图DFS的PATH
  std::vector<CEOP> tmpCEOPs;           // 暂存本task上所有路径

  // 显式收集MI-CFG，用于debug
  std::map<CtxMI, std::vector<CtxMI>> mi_cfg; // TODO 输出修改

  /// UR于CEOP的计算函数
  void URCalculation(unsigned core, const std::string &function);
  // helper, 在此将所有CEOP所需数据存入tmpCEOPs
  void ceopDfs(unsigned u);
  // 构造之前定义的CEOP和UR对象，UR中的AccessInfo内容先设置为空
  void collectCEOPInfo(CtxMI firstCM);
  // 反过来获取UR -> (出边、 MI);也即包含了建立UR图
  void collectUrInfo();
  void print_mi_cfg(const std::string &function);

  /// 在拥有Class之后，此函数计算X(即执行次数)，需要cur_core core_func.
  /// 这里只计算Must的I/D Access, PS不在这里算
  void getExeCntMust();
  /// @brief 计算PS块的执行次数
  unsigned getExeCntPSI(CtxMI CM);
    /// @brief 计算PS块的执行次数
  unsigned getExeCntPSD(CtxData CD);
  // 遍历MI-CFG
  void tarjan(CtxMI CM);

  /// @brief 用于给run()写ctxmi2ps_loop_stack，返回一条CtxMI的loop stack
  /// @param CM 
  /// @return 
  std::vector<std::pair<const llvm::MachineLoop*, bool>> 
  getGlobalLoop(CtxMI CM, const CtxMI topCM){
    // 首先拿到同function的最入loop，使用动态的CM
    const llvm::MachineInstr *MI = CM.MI;
    const llvm::MachineBasicBlock *MBB = MI->getParent();
    const llvm::MachineFunction *MF = MBB->getParent();
    const llvm::MachineLoop *targetLoop = nullptr;
    std::vector<const llvm::MachineLoop *> tmp_loops;
    for (const llvm::MachineLoop *loop :
         TimingAnalysisPass::LoopBoundInfo->getAllLoops()) {
      if (MF == loop->getHeader()->getParent() && loop->contains(MBB)) {
        tmp_loops.push_back(loop);
      }
    }
    for(auto &tmp_loop:tmp_loops){
      bool tmp_flag = false;
      for (auto *Subloop : tmp_loop->getSubLoops()) {
        if(Subloop->contains(MBB)){
          tmp_flag = true;
          break;
        }
      }
      if(!tmp_flag){
        targetLoop = tmp_loop;
      }
    }
    // 入栈所有同function的loop，key须为原分析topCM
    std::vector<std::pair<const llvm::MachineLoop*, bool>> res_loop_stack;
    const llvm::MachineLoop* tmp_loop = targetLoop;
    while(tmp_loop!=nullptr){
      TimingAnalysisPass::AbstractAddress tmp_aa = 
        TimingAnalysisPass::AbstractAddress(
          TimingAnalysisPass::StaticAddrProvider->getAddr(topCM.MI)
        );
      std::pair<const llvm::MachineLoop*, bool> tmp_pair 
        = std::make_pair(tmp_loop, loop2addr_isps[tmp_loop][tmp_aa]);
      res_loop_stack.push_back(tmp_pair);
      tmp_loop = tmp_loop->getParentLoop();
    }
    // 递归, 使用动态的CM
    if(CM.CallSites.size()!=0){
      const llvm::MachineInstr *tmp_callsite = CM.CallSites.back();
      std::vector<const llvm::MachineInstr *> tmpCS = CM.CallSites;
      tmpCS.pop_back();
      CtxMI tmpCM;
      tmpCM.MI = tmp_callsite;
      tmpCM.CallSites = tmpCS;
      std::vector<std::pair<const llvm::MachineLoop*, bool>> 
        callers_ls = getGlobalLoop(tmpCM, topCM);
      for(int i=0;i<callers_ls.size();i++){
        res_loop_stack.push_back(callers_ls[i]);
      }
    }
    return res_loop_stack;
  }

  /// @brief 用于给run()写ctxdata2ps_loop_stack，
  /// 返回一条CtxMI的对应访存的loop stack
  /// @param CM 
  /// @return 
  std::vector<std::pair<const llvm::MachineLoop*, bool>> 
  getGlobalLoopData(CtxData CD){
    // 首先拿到同function的最入loop(same as getGlobalLoop)
    const llvm::MachineInstr *MI = CD.ctx_mi.MI;
    const llvm::MachineBasicBlock *MBB = MI->getParent();
    const llvm::MachineFunction *MF = MBB->getParent();
    const llvm::MachineLoop *targetLoop = nullptr;
    std::vector<const llvm::MachineLoop *> tmp_loops;
    for (const llvm::MachineLoop *loop :
         TimingAnalysisPass::LoopBoundInfo->getAllLoops()) {
      if (MF == loop->getHeader()->getParent() && loop->contains(MBB)) {
        tmp_loops.push_back(loop);
      }
    }
    for(auto &tmp_loop:tmp_loops){
      bool tmp_flag = false;
      for (auto *Subloop : tmp_loop->getSubLoops()) {
        if(Subloop->contains(MBB)){
          tmp_flag = true;
          break;
        }
      }
      if(!tmp_flag){
        targetLoop = tmp_loop;
      }
    }
    // 入栈所有同function的loop
    std::vector<std::pair<const llvm::MachineLoop*, bool>> res_loop_stack;
    const llvm::MachineLoop* tmp_loop = targetLoop;
    while(tmp_loop!=nullptr){
      TimingAnalysisPass::AbstractAddress tmp_aa = CD.data_addr; // diff
      std::pair<const llvm::MachineLoop*, bool> tmp_pair 
        = std::make_pair(tmp_loop, loop2addr_isps[tmp_loop][tmp_aa]);
      res_loop_stack.push_back(tmp_pair);
      tmp_loop = tmp_loop->getParentLoop();
    }
    // 递归
    if(CD.ctx_mi.CallSites.size()!=0){
      const llvm::MachineInstr *tmp_callsite = CD.ctx_mi.CallSites.back();
      std::vector<const llvm::MachineInstr *> tmpCS = CD.ctx_mi.CallSites;
      tmpCS.pop_back();
      CtxData tmpCD;
      CtxMI tmpCM; // diff
      tmpCM.MI = tmp_callsite;
      tmpCM.CallSites = tmpCS;
      tmpCD.ctx_mi = tmpCM;
      tmpCD.data_addr = CD.data_addr; // this is not changed
      std::vector<std::pair<const llvm::MachineLoop*, bool>> 
        callers_ls = getGlobalLoopData(tmpCD);
      for(int i=0;i<callers_ls.size();i++){
        res_loop_stack.push_back(callers_ls[i]);
      }
    }
    return res_loop_stack;
  }
  /*
      搞不了自底向上，搞自顶向下也是ok，在一个函数的所有loop里搜，搜到此BB在此loop里即可取
    优先取更深层的loop；一个函数多个循环是可以的，一个Basic
    Block足以定位哪个循环
      递归函数：一个CM负责处理自己所在函数的循环，即处理一层token，如果多层，外层交给callsite
    处理。于是我们可以处理任意层函数和任意层循环。
      一个local函数中，loop再多也就是个森林，通向我们要寻找的那个BB路径是唯一的。
  */
  unsigned getGlobalUpBd(CtxMI CM) ;

  unsigned bd_helper1(const llvm::MachineBasicBlock *MBB,
                      const llvm::MachineLoop *Loop);

  unsigned bd_helper2(const llvm::MachineLoop *Loop);
};

#endif