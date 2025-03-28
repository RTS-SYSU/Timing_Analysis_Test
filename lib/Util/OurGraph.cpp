#include "Util/OurGraph.h"


OurGraph::OurGraph(std::vector<std::vector<std::string>> &setc,
        CL_info &cl_infor, 
        std::map<std::string, unsigned> &func2corenum1)
        :UrGraph(setc) // TODO delete
        {
  // 首先从AddrClist读取信息，写入
  // data: entry2ctxmi2data_absaddr和entry2ctxmi2datainfo
  // instr: ctxmi_miai
  std::map<std::string,
           std::map<TimingAnalysisPass::dom::cache::Classification, unsigned>>
      instr_cl_cnt;
  std::map<std::string,
           std::map<TimingAnalysisPass::dom::cache::Classification, unsigned>>
      data_cl_cnt;
  for (const auto &tmp_acl : cl_infor.AddrCList) {
    if (tmp_acl.MIAddr != 0) { // data access
      unsigned tmp_addr = tmp_acl.MIAddr;
      if (TimingAnalysisPass::StaticAddrProvider->hasMachineInstrByAddr(
              tmp_addr)) {
        const llvm::MachineInstr *miptr = // got mi
            TimingAnalysisPass::StaticAddrProvider->getMachineInstrByAddr(
                tmp_addr);
        auto tokenlist = tmp_acl.ctx.getTokenList();
        std::vector<const llvm::MachineInstr *> CallSites;
        std::string tmp_entry = "";
        unsigned tmp_entry_corenum = -1;
        // ctx
        for (const auto &tmptoken : tokenlist) { // got callsites
          if (tmptoken->getType() ==
              TimingAnalysisPass::PartitionTokenType::CALLSITE) {
            TimingAnalysisPass::PartitionTokenCallSite *cstoken =
                dynamic_cast<TimingAnalysisPass::PartitionTokenCallSite *>(
                    tmptoken);
            if (!cstoken) {
              assert(0 && "fail to convert token into callsite token");
            }
            const llvm::MachineInstr *callsite = cstoken->getCallSite();
            CallSites.push_back(callsite);
          } else if (tmptoken->getType() ==
                     TimingAnalysisPass::PartitionTokenType::FUNCALLEE) {
            if (tmp_entry == "") {
              TimingAnalysisPass::PartitionTokenFunCallee *cetoken =
                  dynamic_cast<TimingAnalysisPass::PartitionTokenFunCallee *>(
                      tmptoken);
              tmp_entry = cetoken->getCallee()->getName().str();
              tmp_entry_corenum =
                  func2corenum1[tmp_entry]; // got corenum & entry
            }
          }
        }
        // CtxMI
        CtxMI tmpCM;
        tmpCM.MI = miptr;
        if (tmpCM.MI->isCall()) {
          CallSites.pop_back();
        }
        tmpCM.CallSites = CallSites;
        // DataAccess, exe_cnt is later calculated in run()
        auto itv = tmp_acl.address.getAsInterval();
        if (!(tmp_acl.address == tmp_acl.address.getUnknownAddress())) {
          unsigned tmp_upper_line = itv.upper() & ~(L2linesize - 1);
          unsigned tmp_lower_line = itv.lower() & ~(L2linesize - 1);
          ;
          // We access a **cache line** every time
          for (int tmp_a = tmp_lower_line; tmp_a <= tmp_upper_line;
               tmp_a += L2linesize) {
            AccessInfo tmp_ai;
            tmp_ai.classification = tmp_acl.CL;
            tmp_ai.age = tmp_acl.age;
            tmp_ai.data_addr = tmp_a;
            entry2ctxmi2datainfo[tmp_entry][tmpCM].push_back(tmp_ai);
            data_cl_cnt[tmp_entry][tmp_acl.CL] += 1;
          }
          entry2ctxmi2data_absaddr[tmp_entry][tmpCM].push_back(tmp_acl.address);
        } else { // TODO:how can we handle any access with unknown addr?
        }
      } else {
        assert(tmp_addr == 0 && "why we have an addr without mi?");
      }
    } else { // instruction access
      auto itv = tmp_acl.address.getAsInterval();
      const TimingAnalysisPass::Address tmp_upper_cache_line =
          itv.upper() & ~(L2linesize - 1);
      const TimingAnalysisPass::Address tmp_lower_cache_line =
          itv.lower() & ~(L2linesize - 1);
      assert(tmp_lower_cache_line == tmp_upper_cache_line);
      if (TimingAnalysisPass::StaticAddrProvider->hasMachineInstrByAddr(
              itv.lower())) {
        const llvm::MachineInstr *miptr = // got mi
            TimingAnalysisPass::StaticAddrProvider->getMachineInstrByAddr(
                itv.lower());
        auto tokenlist = tmp_acl.ctx.getTokenList();
        std::vector<const llvm::MachineInstr *> CallSites;
        std::string tmp_entry = "";
        unsigned tmp_entry_corenum = -1;
        for (const auto &tmptoken : tokenlist) { // got callsites
          if (tmptoken->getType() ==
              TimingAnalysisPass::PartitionTokenType::CALLSITE) {
            TimingAnalysisPass::PartitionTokenCallSite *cstoken =
                dynamic_cast<TimingAnalysisPass::PartitionTokenCallSite *>(
                    tmptoken);
            if (!cstoken) {
              assert(0 && "fail to convert token into callsite token");
            }
            const llvm::MachineInstr *callsite = cstoken->getCallSite();
            CallSites.push_back(callsite);
          } else if (tmptoken->getType() ==
                     TimingAnalysisPass::PartitionTokenType::FUNCALLEE) {
            if (tmp_entry == "") {
              TimingAnalysisPass::PartitionTokenFunCallee *cetoken =
                  dynamic_cast<TimingAnalysisPass::PartitionTokenFunCallee *>(
                      tmptoken);
              tmp_entry = cetoken->getCallee()->getName().str();
              tmp_entry_corenum =
                  func2corenum1[tmp_entry]; // got corenum & entry
            }
          }
        }
        CtxMI tmpCM;
        tmpCM.MI = miptr;
        if (tmpCM.MI->isCall()) {
          CallSites.pop_back();
        }
        tmpCM.CallSites = CallSites;
        AccessInfo obj;
        obj.age = tmp_acl.age;
        obj.classification = tmp_acl.CL;
        obj.x = ctxmi_miai[tmp_entry_corenum][tmp_entry][tmpCM].x;
        ctxmi_miai[tmp_entry_corenum][tmp_entry][tmpCM] = obj;
        instr_cl_cnt[tmp_entry][tmp_acl.CL] += 1; // for gdb
      } else {
        assert(itv.lower() == 0 && "why we have an addr without mi?");
      }
    }
  }
  // 构建data access相关信息
  getDataExeCntMust();

  // === here we handle the PS block ===
  // 从AddrPSList读入信息
  // step1: we calculate stack<loop> for each ctxmi
  for (auto &tmp_scope : cl_infor.AddrPSList) {
    if (ZWDebug) {
      loop2ps_scope[tmp_scope.first.loop] = tmp_scope.first;
    }
    std::map<unsigned, bool> tmp_addr2isps;
    for (auto &tmp_ps_acl : tmp_scope.second) {
      TimingAnalysisPass::AbstractAddress tmp_abs_addr = tmp_ps_acl.address;
      loop2addr_isps[tmp_scope.first.loop][tmp_abs_addr] = true;
      // we make loop public
    }
  }
  for (auto &tmp_core : CEOPs) {
    for (auto &tmp_task : tmp_core.second) {
      std::string f_name = tmp_task.first;
      for (auto &tmp_ceop : tmp_task.second) {
        for (UnorderedRegion &tmp_ur : tmp_ceop.URs) {
          for (auto &tmp_mi2xclass : tmp_ur.mi2xclass) {
            CtxMI tmp_cm = tmp_mi2xclass.first;
            // 构建ctxmi -> loop stack
            std::vector<std::pair<const llvm::MachineLoop *, bool>>
                tmp_loop_stack = getGlobalLoop(tmp_cm, tmp_cm);
            ctxmi2ps_loop_stack[f_name][tmp_cm] = tmp_loop_stack;
            // 构建ctxdata -> loop stack
            for (TimingAnalysisPass::AbstractAddress tmp_aa :
                 entry2ctxmi2data_absaddr[f_name][tmp_cm]) {
              CtxData tmp_cd;
              tmp_cd.ctx_mi = tmp_cm;
              tmp_cd.data_addr = tmp_aa;
              std::vector<std::pair<const llvm::MachineLoop *, bool>>
                  tmp_loop_stack_d = getGlobalLoopData(tmp_cd);
              ctxdata2ps_loop_stack[f_name][tmp_cd] = tmp_loop_stack_d;
            }
          }
          if (ZWDebug) { // just for output
            std::ofstream Myfile;
            Myfile.open("JJY_loop_stack.txt", std::ios_base::app);
            for (auto &tmp_mi2xclass : tmp_ur.mi2xclass) {
              CtxMI tmp_cm = tmp_mi2xclass.first;
              std::vector<std::pair<const llvm::MachineLoop *, bool>>
                  tmp_loop_stack = ctxmi2ps_loop_stack[f_name][tmp_cm];
              Myfile << "### in function_" << f_name << "\n";
              Myfile << tmp_cm;
              for (auto &tmp_pair : tmp_loop_stack) {
                Myfile << "in loop_" << loop2ps_scope[tmp_pair.first] << "isPS?"
                       << tmp_pair.second << "\n";
              }
              Myfile << "## data access of this MI\n";
              for (TimingAnalysisPass::AbstractAddress tmp_aa :
                   entry2ctxmi2data_absaddr[f_name][tmp_cm]) {
                CtxData tmp_cd;
                tmp_cd.ctx_mi = tmp_cm;
                tmp_cd.data_addr = tmp_aa;
                std::vector<std::pair<const llvm::MachineLoop *, bool>>
                    tmp_loop_stack_d = ctxdata2ps_loop_stack[f_name][tmp_cd];
                Myfile << "Data Access: " << tmp_cd.data_addr << "\n";
                for (auto &tmp_pair : tmp_loop_stack_d) {
                  Myfile << "in loop_" << loop2ps_scope[tmp_pair.first]
                         << "isPS?" << tmp_pair.second << "\n";
                }
              }
            }
          }
        }
      }
    }
  }
  // step2: we calculate exe cnt for each PS CtxMI & CtxData
  // and build ctxmi2ps_ai & ctxdata2ps_ai
  // we currently do this in Ourmethod.h, so not written here

  // 查看收集的CL信息
  if (ZWDebug) { 
    std::ofstream Myfile;
    Myfile.open("ZW_ACL_Summary.txt", std::ios_base::app);
    Myfile << "###Instr's CL Information###\n";
    for (const auto &clmap : instr_cl_cnt) {
      Myfile << " ##EntryPoint: " << clmap.first << "\n";
      for (const auto &cl_pair : clmap.second) {
        Myfile << "  #CL: " << cl_pair.first << " cnt is " << cl_pair.second
               << "\n";
      }
    }
    Myfile << "###Data's CL Information###\n";
    for (const auto &clmap : data_cl_cnt) {
      Myfile << " ##EntryPoint: " << clmap.first << "\n";
      for (const auto &cl_pair : clmap.second) {
        Myfile << "  #CL: " << cl_pair.first << " cnt is " << cl_pair.second
               << "\n";
      }
    }
    Myfile.close();
  }
}

void OurGraph::getDataExeCntMust() {
  for(auto &tmp_core:CEOPs){
    unsigned core_num = tmp_core.first;
    for(auto &tmp_task:tmp_core.second){
      std::string enrty_name = tmp_task.first;
      for(CEOP &tmp_ceop:tmp_task.second){
        for(UnorderedRegion &tmp_ur:tmp_ceop.URs){
          for(auto &tmp_pair:tmp_ur.mi2xclass){
            CtxMI tmp_cm = tmp_pair.first;
            if (ctxmi_miai[core_num][enrty_name].find(tmp_cm) ==
                ctxmi_miai[core_num][enrty_name].end()) {
              AccessInfo obj;
              obj.classification = TimingAnalysisPass::dom::cache::CL_BOT;
              if (ZWDebug) {
                std::ofstream myfile;
                std::string fileName = "ZW_Uncollected.txt";
                myfile.open(fileName, std::ios_base::app);
                myfile << "Core:" << core_num << " Func:" << enrty_name
                      << " MI:" << tmp_cm << " is uncollected\n";
                myfile.close();
              }
            } 
            // 不需要在这里计算指令的执行次数，因为UrGraph已经计算
            // else {
            //   ctxmi_miai[core_num][enrty_name][tmp_cm].x = getGlobalUpBd(tmp_cm);
            // }
            // handle data access
            std::vector<AccessInfo> tmp_ais = entry2ctxmi2datainfo[enrty_name][tmp_cm];
            for (int i = 0; i < tmp_ais.size(); i++) {
              entry2ctxmi2datainfo[enrty_name][tmp_cm][i].x =
                  ctxmi_miai[core_num][enrty_name][tmp_cm].x;
            }
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
//     std::vector<AccessInfo> tmp_ais = entry2ctxmi2datainfo[cur_func][tmp_cm];
//     for (int i = 0; i < tmp_ais.size(); i++) {
//       entry2ctxmi2datainfo[cur_func][tmp_cm][i].x =
//           ctxmi_miai[cur_core][cur_func][tmp_cm].x;
//     }
//   }
}

void OurGraph::print_our_cfg(unsigned cur_core, const std::string &function) {
  const std::vector<std::string> colors = {
      "turquoise", "lightblue", "lightgreen", "lightyellow", "white"};
  std::unordered_map<std::string, std::string> func_color_map;
  int color_index = 0;
  std::error_code EC;
  raw_fd_ostream File("OurGraph_" + function + ".dot", EC,
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
    // 纯UrGraph无ExeCnt即CL信息, ZhangGraph需要
    File << "ExeCnt:" << ctxmi_miai[cur_core][function][CM].x << " "
         << "CHMC:" << ctxmi_miai[cur_core][function][CM].classification
         << "\\l  ";
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
    File << "data access: [\n";
    for (AccessInfo tmpai : entry2ctxmi2datainfo[function][CM]) {
      File << "[addr_0x";
      TimingAnalysisPass::printHex(File, tmpai.data_addr);
      File << "_cl_" << tmpai.classification << "_age_" << tmpai.age
           << "_execnt_" << tmpai.x << "]\n";
    }
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


// unsigned OurGraph::getGlobalUpBd(CtxMI CM) {
//   const llvm::MachineInstr *MI = CM.MI;
//   const llvm::MachineBasicBlock *MBB = MI->getParent();
//   const llvm::MachineFunction *MF = MBB->getParent();
//   unsigned x_local = 1;
//   // local execute times
//   for (const MachineLoop *loop :
//        TimingAnalysisPass::LoopBoundInfo->getAllLoops()) {
//     if (MF == loop->getHeader()->getParent() &&
//         loop->contains(
//             MBB)) { // 这里得到的就是路径上的一层loop，需要向下、向上搜
//       x_local *= bd_helper1(MBB, loop);
//       if (loop->getParentLoop() != nullptr) {
//         x_local *= bd_helper2(loop->getParentLoop());
//       }
//       break;
//     }
//   }
//   if (CM.CallSites.size() != 0) { // 非最外层函数
//     const llvm::MachineInstr *callsite = CM.CallSites.back();
//     std::vector<const llvm::MachineInstr *> tmpCS = CM.CallSites;
//     tmpCS.pop_back();
//     CtxMI tmpCM;
//     tmpCM.MI = callsite;
//     tmpCM.CallSites = tmpCS;
//     x_local *= getGlobalUpBd(tmpCM);
//   }
//   return x_local;
// }

// unsigned OurGraph::bd_helper1(const llvm::MachineBasicBlock *MBB,
//                                  const llvm::MachineLoop *Loop) {
//   unsigned x_local = 1;
//   if (TimingAnalysisPass::LoopBoundInfo->hasUpperLoopBound(
//           Loop, TimingAnalysisPass::Context())) {
//     x_local *= TimingAnalysisPass::LoopBoundInfo->getUpperLoopBound(
//         Loop, TimingAnalysisPass::Context());
//     // 此函数加了个else已经是以manual而非SCEV优先
//   }
//   for (auto *Subloop : Loop->getSubLoops()) {
//     if (Subloop->getParentLoop() == Loop // 必须是直接儿子，不能是孙子等
//         && Subloop->contains(MBB)) {
//       x_local *= bd_helper1(MBB, Subloop);
//       break; // 不会有两个同时包含的
//     }
//   }
//   return x_local;
// }

// unsigned OurGraph::bd_helper2(const llvm::MachineLoop *Loop) {
//   unsigned scalar = 1;
//   if (TimingAnalysisPass::LoopBoundInfo->hasUpperLoopBound(
//           Loop, TimingAnalysisPass::Context())) {
//     scalar *= TimingAnalysisPass::LoopBoundInfo->getUpperLoopBound(
//         Loop, TimingAnalysisPass::Context());
//   } else {
//     assert(0 && "why we have a loop but no LoopBound?");
//   }
//   if (Loop->getParentLoop() == nullptr) { // 已经是最外层
//     return scalar;
//   } else {
//     scalar *= bd_helper2(Loop->getParentLoop());
//   }
//   return scalar;
// }

std::vector<std::pair<const llvm::MachineLoop *, bool>>
  OurGraph::getGlobalLoop(CtxMI CM, const CtxMI topCM) {
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
  for (auto &tmp_loop : tmp_loops) {
    bool tmp_flag = false;
    for (auto *Subloop : tmp_loop->getSubLoops()) {
      if (Subloop->contains(MBB)) {
        tmp_flag = true;
        break;
      }
    }
    if (!tmp_flag) {
      targetLoop = tmp_loop;
    }
  }
  // 入栈所有同function的loop，key须为原分析topCM
  std::vector<std::pair<const llvm::MachineLoop *, bool>> res_loop_stack;
  const llvm::MachineLoop *tmp_loop = targetLoop;
  while (tmp_loop != nullptr) {
    TimingAnalysisPass::AbstractAddress tmp_aa =
        TimingAnalysisPass::AbstractAddress(
            TimingAnalysisPass::StaticAddrProvider->getAddr(topCM.MI));
    std::pair<const llvm::MachineLoop *, bool> tmp_pair =
        std::make_pair(tmp_loop, loop2addr_isps[tmp_loop][tmp_aa]);
    res_loop_stack.push_back(tmp_pair);
    tmp_loop = tmp_loop->getParentLoop();
  }
  // 递归, 使用动态的CM
  if (CM.CallSites.size() != 0) {
    const llvm::MachineInstr *tmp_callsite = CM.CallSites.back();
    std::vector<const llvm::MachineInstr *> tmpCS = CM.CallSites;
    tmpCS.pop_back();
    CtxMI tmpCM;
    tmpCM.MI = tmp_callsite;
    tmpCM.CallSites = tmpCS;
    std::vector<std::pair<const llvm::MachineLoop *, bool>> callers_ls =
        getGlobalLoop(tmpCM, topCM);
    for (int i = 0; i < callers_ls.size(); i++) {
      res_loop_stack.push_back(callers_ls[i]);
    }
  }
  return res_loop_stack;
}

std::vector<std::pair<const llvm::MachineLoop *, bool>>
  OurGraph::getGlobalLoopData(CtxData CD) {
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
  for (auto &tmp_loop : tmp_loops) {
    bool tmp_flag = false;
    for (auto *Subloop : tmp_loop->getSubLoops()) {
      if (Subloop->contains(MBB)) {
        tmp_flag = true;
        break;
      }
    }
    if (!tmp_flag) {
      targetLoop = tmp_loop;
    }
  }
  // 入栈所有同function的loop
  std::vector<std::pair<const llvm::MachineLoop *, bool>> res_loop_stack;
  const llvm::MachineLoop *tmp_loop = targetLoop;
  while (tmp_loop != nullptr) {
    TimingAnalysisPass::AbstractAddress tmp_aa = CD.data_addr; // diff
    std::pair<const llvm::MachineLoop *, bool> tmp_pair =
        std::make_pair(tmp_loop, loop2addr_isps[tmp_loop][tmp_aa]);
    res_loop_stack.push_back(tmp_pair);
    tmp_loop = tmp_loop->getParentLoop();
  }
  // 递归
  if (CD.ctx_mi.CallSites.size() != 0) {
    const llvm::MachineInstr *tmp_callsite = CD.ctx_mi.CallSites.back();
    std::vector<const llvm::MachineInstr *> tmpCS = CD.ctx_mi.CallSites;
    tmpCS.pop_back();
    CtxData tmpCD;
    CtxMI tmpCM; // diff
    tmpCM.MI = tmp_callsite;
    tmpCM.CallSites = tmpCS;
    tmpCD.ctx_mi = tmpCM;
    tmpCD.data_addr = CD.data_addr; // this is not changed
    std::vector<std::pair<const llvm::MachineLoop *, bool>> callers_ls =
        getGlobalLoopData(tmpCD);
    for (int i = 0; i < callers_ls.size(); i++) {
      res_loop_stack.push_back(callers_ls[i]);
    }
  }
  return res_loop_stack;
}

unsigned OurGraph::getExeCntPSI(CtxMI CM) {}

unsigned OurGraph::getExeCntPSD(CtxData CD) {}