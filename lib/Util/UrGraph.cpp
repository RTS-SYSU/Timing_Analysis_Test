#include "Util/UrGraph.h"
#include "Util/GlobalVars.h"

UrGraph::UrGraph(std::vector<std::vector<std::string>> &setc) {
  this->coreinfo = setc; // in base
  // 进行UR和CEOP的获取
  for (unsigned i = 0; i < CoreNums; ++i) {
    outs() << " -> UR Analysis for core: " << i;

    for (std::string &functionName : coreinfo[i]) {
      outs() << " entry point: " << functionName << '\n';
      URCalculation(i, functionName);
      outs() << "Core-" << i << " Func: " << functionName << " have "
             << CEOPs[i][functionName].size() << " CEOP(s)" << '\n';
    }
  }
}

void UrGraph::URCalculation(unsigned core, const std::string &function) {
  // 参照analysisDriver.h
  auto MF =
      TimingAnalysisPass::machineFunctionCollector->getFunctionByName(function);
  const MachineBasicBlock *analysisStart = &*(MF->begin());
  const llvm::MachineInstr *firstMI = &(analysisStart->front());
  // 每次需要清空上述用于暂存的数据结构
  dfncnt = stack_pt = ur_id = 0;
  // 新的task清空全部暂存的数据结构；map用迭代器清空会把实例都清了，这里就只清指针
  dfn.clear();
  low.clear();
  ur_stack.clear();
  in_stack.clear();
  mi_ur.clear();
  ur_size.clear();
  ur_graph.clear();
  ur_mi.clear();
  tmpCEOPs.clear();
  mi_cfg.clear();

  CtxMI firstCM;
  firstCM.MI = firstMI;
  tarjan(firstCM); // module1: 在CFG上获取UR
  if (ZWDebug) {
    print_mi_cfg(core, function); // debug
  }
  collectUrInfo(); // module2: 建立UR图和ur为键的信息映射
  collectCEOPInfo(firstCM, core,
                  function); // module4: dfs遍历图，并同时建立起CEOP的数据结构
  CEOPs[core][function] = tmpCEOPs;
  getExeCntMust(); // 计算执行次数

  if (ZWDebug) {
    std::ofstream myfile;
    std::string fileName = "ZW_Output.txt";
    myfile.open(fileName, std::ios_base::app);
    myfile << "EntryPoint: " << function << " with " << tmpCEOPs.size()
           << "CEOPs" << std::endl;
    for (int i = 0; i < tmpCEOPs.size(); i++) {
      CEOP tmp_ceop = tmpCEOPs[i];
      myfile << "  CEOP-" << i << " have " << tmp_ceop.URs.size() << " UR(s)"
             << std::endl;
    }
  }
}

void UrGraph::ceopDfs(unsigned u, unsigned &cur_core, std::string &cur_func) {
  UnorderedRegion curUR{};
  std::vector<CtxMI> curMIs = ur_mi[u];
  for (int i = 0; i < curMIs.size(); i++) {
    AccessInfo obj = ctxmi_miai[cur_core][cur_func][curMIs[i]];
    // if(curMIs[i]->isTransient()) continue; // 这里包括伪指令等
    curUR.mi2xclass.insert(std::make_pair(curMIs[i], obj));
  }
  assert(curUR.mi2xclass.size() != 0 && "UR must have at least 1 instr");
  tmpPath.push_back(curUR);

  std::vector<unsigned> vs = ur_graph[u];
  if (vs.size() == 0) { // 出口
    CEOP curCeop{};
    curCeop.URs = tmpPath;
    tmpCEOPs.push_back(curCeop); // recorded
    tmpPath.pop_back();
    return;
  }

  for (int i = 0; i < vs.size(); i++) {
    unsigned v = vs[i];
    ceopDfs(v, cur_core, cur_func);
  }
  tmpPath.pop_back();
  return;
}

void UrGraph::collectCEOPInfo(CtxMI firstCM, unsigned core,
                              std::string function) {
  unsigned s = mi_ur[firstCM];
  ceopDfs(s, core, function);
}

void UrGraph::collectUrInfo() { // 改为 ur_ctxmi
  for (auto m_u : mi_ur) {
    CtxMI tmp_cm = m_u.first;
    unsigned ur_id_num = m_u.second;
    auto it = ur_graph.find(ur_id_num);
    if (it == ur_graph.end()) { // 首次记录某个UR
      std::vector<unsigned> ur_out_edge_vec;
      ur_graph[ur_id_num] = ur_out_edge_vec;
      std::vector<CtxMI> ur_mi_vec;
      ur_mi[ur_id_num] = ur_mi_vec;
    }
    // 在ur中添加mi
    ur_mi[ur_id_num].push_back(tmp_cm);
    // 在ur中添加后继ur
    std::vector<CtxMI> succ_cms = tmp_cm.getSucc();
    for (auto succ_cm : succ_cms) {
      unsigned target_ur_id_num = mi_ur[succ_cm];
      if (ur_id_num != target_ur_id_num) {
        ur_graph[ur_id_num].push_back(target_ur_id_num);
      }
    }
  }
}

void UrGraph::print_mi_cfg(unsigned cur_core, const std::string &function) {
  const std::vector<std::string> colors = {
      "turquoise", "lightblue", "lightgreen", "lightyellow", "white"};
  std::unordered_map<std::string, std::string> func_color_map;
  int color_index = 0;
  std::error_code EC;
  raw_fd_ostream File("UrGraph_" + function + ".dot", EC,
                      sys::fs::OpenFlags::OF_Text);
  if (EC) {
    errs() << "Error opening file: " << EC.message() << "\n";
  }
  File << "digraph \"MachineCFG of " + function + "\" {\n";
  // 为CtxMI分配简短ID
  std::map<CtxMI, unsigned> cm_id_map;
  unsigned cnt = 0;
  for (auto tmp_pair : mi_cfg) {
    CtxMI CM = tmp_pair.first;
    cm_id_map[CM] = cnt++;
  }
  for (auto tmp_pair : mi_cfg) {
    // 函数获取或分配颜色
    CtxMI CM = tmp_pair.first;
    const llvm::MachineInstr *MI = CM.MI;
    const std::string func_name =
        MI->getParent()->getParent()->getFunction().getName().str();
    if (func_color_map.find(func_name) == func_color_map.end()) {
      func_color_map[func_name] = colors[color_index % colors.size()];
      color_index++;
    }
    const std::string color = func_color_map[func_name];
    // 节点
    File << "  " << "Node" << cm_id_map[CM] << " [label=\"MI" << MI << "\\l  ";
    MI->print(File, false, false, true);
    File << "\\l  ";
    std::string tmp_flag = (MI->isTransient()) ? "True" : "False";
    File << "isTransient:" << tmp_flag << "\\l  ";
    // 纯UrGraph无CL信息
    File << "ExeCnt:" << ctxmi_miai[cur_core][function][CM].x << "\\l  ";
    // File << "ExeCnt:" << ctxmi_miai[cur_core][function][CM].x << " "
    //      << "CHMC:" << ctxmi_miai[cur_core][function][CM].classification
    //      << "\\l  ";
    unsigned tmp_addr = TimingAnalysisPass::StaticAddrProvider->getAddr(MI);
    unsigned tmp_line = tmp_addr / L2linesize;
    unsigned tmp_index = tmp_line % NN_SET;
    File << "MI's addr:";
    TimingAnalysisPass::printHex(File, tmp_addr);
    File << " cache line:" << tmp_line << " cache index:" << tmp_index
         << "\\l  ";
    File << "More Info of MI:"
         << TimingAnalysisPass::getMachineInstrIdentifier(MI) << "\\l";
    File << "in UR" << mi_ur[CM] << "\\l  ";
    File << "May Load?" << MI->mayLoad() << "\\l  ";
    File << "May Store?" << MI->mayStore() << "\\l  ";
    // 纯UrGraph无data access的ExeCnt和CL信息，OurGraph需要
    // File << "data access: [\n";
    // for (AccessInfo tmpai : entry2ctxmi2datainfo[function][CM]) {
    //   File << "[addr_0x";
    //   TimingAnalysisPass::printHex(File, tmpai.data_addr);
    //   // File << "_cl_" << tmpai.classification << "_age_" << tmpai.age
    //   //      << "_execnt_" << tmpai.x << "]\n";
    // }
    File << "]\\l  ";
    File << "\" fillcolor=\"" << color << "\" style=\"filled\"];\n";
    // 边
    std::vector<CtxMI> tmp_CMs = tmp_pair.second;
    for (auto tmp_CM : tmp_CMs) {
      File << "  " << "Node" << cm_id_map[CM] << " -> " << "Node"
           << cm_id_map[tmp_CM] << ";\n";
    }
  }
  File << "}\n";
}

void UrGraph::tarjan(CtxMI CM) {
  low[CM] = dfn[CM] = ++dfncnt;
  ur_stack[++stack_pt] = CM;
  in_stack[CM] = 1;
  std::vector<CtxMI> SUCCs = CM.getSucc();

  // 收集mi_cfg，用来输出debug
  if (mi_cfg.find(CM) == mi_cfg.end()) {
    mi_cfg[CM] = SUCCs;
  }

  for (auto SUCC : SUCCs) {
    if (dfn.find(SUCC) == dfn.end()) { // 从未访问
      tarjan(SUCC);
      low[CM] = std::min(low[CM], low[SUCC]); // 回溯，可能子树somehow返祖
    } else if (in_stack[SUCC]) {
      low[CM] = std::min(low[CM], dfn[SUCC]);
    }
  }
  if (dfn[CM] == low[CM]) { // 回溯的时候再消，eg无子直接自成1个分量
    // 所以最后回访到子树的根时，别的都pop掉了
    ++ur_id;
    do {
      mi_ur[ur_stack[stack_pt]] = ur_id;
      ur_size[ur_id] += 1;
      in_stack[ur_stack[stack_pt]] = 0;
    } while (ur_stack[stack_pt--] != CM);
  }
}

void UrGraph::getExeCntMust() {
  for (auto &tmp_core : CEOPs) {
    unsigned core_num = tmp_core.first;
    for (auto &tmp_task : tmp_core.second) {
      std::string enrty_name = tmp_task.first;
      for (CEOP &tmp_ceop : tmp_task.second) {
        for (UnorderedRegion &tmp_ur : tmp_ceop.URs) {
          for (auto &tmp_pair : tmp_ur.mi2xclass) {
            const CtxMI &tmp_cm = tmp_pair.first;
            unsigned a = getGlobalUpBd(enrty_name, tmp_cm);
            unsigned b = ctxmi_miai[core_num][enrty_name][tmp_cm].x;
            tmp_pair.second.x = a > b ? a : b;
            ctxmi_miai[core_num][enrty_name][tmp_cm].x = tmp_pair.second.x;
          }
        }
      }
    }
  }
  //   // assert(mi_class[cur_core][cur_func].size() > 0 &&
  //   //   "We must collect CHMC first");
  //   for (auto tmp_pair : mi_ur) {
  //     CtxMI tmp_cm = tmp_pair.first;
  //     // handle mi access
  //     // FIXME: for CL that we don't collect
  //     if (ctxmi_miai[cur_core][cur_func].find(tmp_cm) ==
  //         ctxmi_miai[cur_core][cur_func].end()) {
  //       AccessInfo obj;
  //       obj.classification = TimingAnalysisPass::dom::cache::CL_BOT;
  //       if (ZWDebug) {
  //         std::ofstream myfile;
  //         std::string fileName = "ZW_Uncollected.txt";
  //         myfile.open(fileName, std::ios_base::app);
  //         myfile << "Core:" << cur_core << " Func:" << cur_func
  //                << " MI:" << tmp_cm << " is uncollected\n";
  //         myfile.close();
  //       }
  //     } else {
  //       ctxmi_miai[cur_core][cur_func][tmp_cm].x = getGlobalUpBd(tmp_cm);
  //     }
  //     // handle data access
  //     std::vector<AccessInfo> tmp_ais =
  //     entry2ctxmi2datainfo[cur_func][tmp_cm]; for (int i = 0; i <
  //     tmp_ais.size(); i++) {
  //       entry2ctxmi2datainfo[cur_func][tmp_cm][i].x =
  //           ctxmi_miai[cur_core][cur_func][tmp_cm].x;
  //     }
  //   }
}

unsigned UrGraph::getGlobalUpBd(std::string entry, CtxMI CM) {
  const llvm::MachineInstr *MI = CM.MI;
  const llvm::MachineBasicBlock *MBB = MI->getParent();
  const llvm::MachineFunction *MF = MBB->getParent();
  unsigned x_local = 1;
  // local execute times
  for (const MachineLoop *loop :
       TimingAnalysisPass::LoopBoundInfo->getAllLoops()) {
    if (MF == loop->getHeader()->getParent() &&
        loop->contains(
            MBB)) { // 这里得到的就是路径上的一层loop，需要向下、向上搜
      x_local *= bd_helper1(entry, MBB, loop);
      if (loop->getParentLoop() != nullptr) {
        x_local *= bd_helper2(entry, loop->getParentLoop());
      }
      break;
    }
  }
  if (CM.CallSites.size() != 0) { // 非最外层函数
    const llvm::MachineInstr *callsite = CM.CallSites.back();
    std::vector<const llvm::MachineInstr *> tmpCS = CM.CallSites;
    tmpCS.pop_back();
    CtxMI tmpCM;
    tmpCM.MI = callsite;
    tmpCM.CallSites = tmpCS;
    x_local *= getGlobalUpBd(entry, tmpCM);
  }
  return x_local;
}

unsigned UrGraph::bd_helper1(std::string entry,
                             const llvm::MachineBasicBlock *MBB,
                             const llvm::MachineLoop *Loop) {
  unsigned x_local = 1;
  x_local *= ALLLoopBoundInfo[entry]->GgetUpperLoopBound(Loop);
  for (auto *Subloop : Loop->getSubLoops()) {
    if (Subloop->getParentLoop() == Loop // 必须是直接儿子，不能是孙子等
        && Subloop->contains(MBB)) {
      x_local *= bd_helper1(entry, MBB, Subloop);
      break; // 不会有两个同时包含的
    }
  }
  return x_local;
}

unsigned UrGraph::bd_helper2(std::string entry, const llvm::MachineLoop *Loop) {
  unsigned scalar = 1;
  // if (ALLLoopBoundInfo[entry]->hasUpperLoopBound(
  //         Loop, TimingAnalysisPass::Context())) {
  //   scalar *= ALLLoopBoundInfo[entry]->getUpperLoopBound(
  //       Loop, TimingAnalysisPass::Context());
  // } else {
  //   assert(0 && "why we have a loop but no LoopBound?");
  // }
  scalar *= ALLLoopBoundInfo[entry]->GgetUpperLoopBound(Loop);
  if (Loop->getParentLoop() == nullptr) { // 已经是最外层
    return scalar;
  } else {
    scalar *= bd_helper2(entry, Loop->getParentLoop());
  }
  return scalar;
}