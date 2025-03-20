#include "Util/Zhangmethod.h"


Zhangmethod::Zhangmethod(std::vector<std::vector<std::string>> &setc, CL_info &cl_infor,
              std::map<std::string, unsigned> &func2corenum1) {
  this->coreinfo = setc;
  // handling data & instr access for must anlysis
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
        tmpCM.CallSites = CallSites;
        // DataAccess, exe_cnt is later calculated in run()
        auto itv = tmp_acl.address.getAsInterval();
        if(!(tmp_acl.address==tmp_acl.address.getUnknownAddress())){
          unsigned tmp_upper_line = itv.upper()
            & ~(L2linesize - 1);
          unsigned tmp_lower_line = itv.lower()
            & ~(L2linesize - 1);;
          // We access a **cache line** every time
          for(int tmp_a=tmp_lower_line;
              tmp_a<tmp_upper_line;
              tmp_a+=L2linesize){
            AccessInfo tmp_ai;
            tmp_ai.classification = tmp_acl.CL;
            tmp_ai.age = tmp_acl.age;
            tmp_ai.data_addr = tmp_a;
            entry2ctxmi2datainfo[tmp_entry][tmpCM].push_back(tmp_ai);
            data_cl_cnt[tmp_entry][tmp_acl.CL] += 1;
          }
        }else{ // TODO:how can we handle any access with unknown addr?

        }
      }else {
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
        tmpCM.CallSites = CallSites;
        AccessInfo obj;
        obj.age = tmp_acl.age;
        obj.classification = tmp_acl.CL;
        ctxmi_miai[tmp_entry_corenum][tmp_entry][tmpCM]
          = obj;
        instr_cl_cnt[tmp_entry][tmp_acl.CL] += 1; // for gdb
      } else {
        assert(itv.lower() == 0 && "why we have an addr without mi?");
      }
    }
  }
  if (ZWDebug) { // 查看收集的CL信息
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

void Zhangmethod::run(CL_info &cl_infor) {
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
  // === here we handle the PS block ===
  // step1: we calculate stack<loop> for each ctxmi
  for (auto &tmp_scope : cl_infor.AddrPSList) {
    // loop2ps_scope[tmp_scope.first.loop] =
    //     tmp_scope.first; 
    std::map<unsigned, bool> tmp_addr2isps;
    for(auto &tmp_ps_acl:tmp_scope.second){
      TimingAnalysisPass::AbstractAddress tmp_abs_addr = tmp_ps_acl.address;
      loop2addr_isps[tmp_scope.first.loop][tmp_abs_addr] = true; 
      // we make loop public
    }
  }
  for(auto &tmp_core:CEOPs){
    for(auto &tmp_task:tmp_core.second){
      std::string f_name = tmp_task.first;
      for(auto &tmp_ceop:tmp_task.second){
        for(UnorderedRegion &tmp_ur:tmp_ceop.URs){
          for(auto &tmp_mi2xclass:tmp_ur.mi2xclass){
            CtxMI tmp_cm = tmp_mi2xclass.first;
            // 构建ctxmi -> loop stack
            std::vector<std::pair<const llvm::MachineLoop*, bool>> 
              tmp_loop_stack = getGlobalLoop(tmp_cm, tmp_cm);
            ctxmi2ps_loop_stack[f_name][tmp_cm] = tmp_loop_stack;
            // 构建ctxdata -> loop stack
            for(TimingAnalysisPass::AbstractAddress tmp_aa:
              entry2ctxmi2data_absaddr[f_name][tmp_cm]){
                CtxData tmp_cd;
                tmp_cd.ctx_mi = tmp_cm;
                tmp_cd.data_addr = tmp_aa;
                std::vector<std::pair<const llvm::MachineLoop*, bool>> 
                  tmp_loop_stack_d = getGlobalLoopData(tmp_cd);
                ctxdata2ps_loop_stack[f_name][tmp_cd] = tmp_loop_stack_d;
            }
          }
          if (ZWDebug) { // just for output
            std::ofstream Myfile;
            Myfile.open("JJY_loop_stack.txt", std::ios_base::app);
            for(auto &tmp_mi2xclass:tmp_ur.mi2xclass){
                CtxMI tmp_cm = tmp_mi2xclass.first;
                std::vector<std::pair<const llvm::MachineLoop*, bool>> 
                    tmp_loop_stack = ctxmi2ps_loop_stack[f_name][tmp_cm];
                Myfile << "### in function_" << f_name << "\n";
                Myfile << tmp_cm;
                for(auto &tmp_pair:tmp_loop_stack){
                    Myfile << "in loop_" << tmp_pair.first << "isPS?"
                        << tmp_pair.second << "\n";
                }
                Myfile << "## data access of this MI\n";
                for(TimingAnalysisPass::AbstractAddress tmp_aa:
                entry2ctxmi2data_absaddr[f_name][tmp_cm]){
                    CtxData tmp_cd;
                    tmp_cd.ctx_mi = tmp_cm;
                    tmp_cd.data_addr = tmp_aa;
                    std::vector<std::pair<const llvm::MachineLoop*, bool>> 
                    tmp_loop_stack_d = ctxdata2ps_loop_stack[f_name][tmp_cd];
                    Myfile << "Data Access: " << tmp_cd.data_addr << "\n";
                    for(auto &tmp_pair:tmp_loop_stack_d){
                        Myfile << "in loop_" << tmp_pair.first << "isPS?"
                            << tmp_pair.second << "\n"; 
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
  // we currently do this in Ourmethod.h

  // 现在先不实现生命周期迭代
  outs() << " -> WCET Inter Analysis start\n";
  for (unsigned local = 0; local < CoreNums; ++local) {
    for (std::string &localFunc : coreinfo[local]) {
      // 选出本地task
      unsigned wceetOfTSum = 0;
      for (unsigned inter = 0; inter < CoreNums; ++inter) { // interference
        if (local == inter)
          continue;
        for (std::string &interFunc :
              getInitConflictFunction(local, localFunc)) {
          // 这个Init的就是返回几乎全部，反正是第一轮
          // 要考虑函数可能执行多次，这里默认getInitConflictFunction会多次返回
          // 选出冲突task
          unsigned wceetOf2T = 0; // 两个Task之间的WCEET
          for (const CEOP &localP : CEOPs[local][localFunc]) {
            for (const CEOP &interP : CEOPs[inter][interFunc]) {
              // 选出两条Path, 开始dp，横干扰、竖本地
              unsigned localPLen = localP.URs.size();
              unsigned interPLen = interP.URs.size();
              unsigned ArvVal[localPLen][interPLen] = {0};

              for (unsigned i = 1; i < localPLen; i++) {
                ArvVal[i][0] =
                    getFValue(local, localP, i, inter, interP, 0) +
                    ArvVal[i - 1][0]; // 感觉paper公式有问题，改成累加
              }
              for (unsigned i = 1; i < interPLen; i++) {
                ArvVal[0][i] = getFValue(local, localP, 0, inter, interP, i) +
                                ArvVal[0][i - 1];
              }
              for (unsigned i = 1; i < localPLen; i++) {
                for (unsigned j = 1; j < interPLen; j++) {
                  ArvVal[i][j] =
                      std::max(ArvVal[i - 1][j], ArvVal[i][j - 1]) +
                      getFValue(local, localP, i, inter, interP, j);
                }
              }
              wceetOf2T =
                  std::max(wceetOf2T, ArvVal[localPLen - 1][interPLen - 1]);
            }
          }
          wceetOf2T *=
              Latency; // BG Mem的延迟值 from Command Line, 但感觉很容易重名
          wceetOfTSum += wceetOf2T; // 不同核所有冲突的函数都加上
        }
      }
      currWcetInter[local][localFunc] = wceetOfTSum;
      outs() << "Core-" << local << " Func:" << localFunc << " 's WCEET is "
              << wceetOfTSum << "\n";
    }
  }
  std::ofstream myfile;
  // WCET_{sum} = WCET_{intra} + WCEET
  std::string fileName = "ZW_Output.txt";
  myfile.open(fileName, std::ios_base::app);
  for (unsigned local = 0; local < CoreNums; ++local) {
    for (std::string &localFunc : coreinfo[local]) {
      unsigned wcet_intra = currWcetIntra[local][localFunc];
      unsigned wceet = currWcetInter[local][localFunc];
      myfile << "Core-" << local << " F-" << localFunc
              << " intra:" << wcet_intra << " wceet:" << wceet << std::endl;
    }
  }
}

std::vector<std::string> Zhangmethod::
getInitConflictFunction(unsigned core, const std::string &function) {
  // 目前没有考虑跨核依赖
  std::vector<std::string> list;
  for (int i = 0; i < coreinfo.size(); i++) {
    if (i == core) {
      continue;
    }
    for (int j = 0; j < coreinfo[i].size(); j++) {
      list.emplace_back(coreinfo[i][j]);
    }
  }
  return list;
}

unsigned Zhangmethod::getFValue(unsigned localCore, CEOP localPath, unsigned localUR,
                     unsigned interCore, CEOP interPath, unsigned interUR) {
  // TODO
  // 这里参数是不是还漏了Core上的哪个函数？有CEOP问题不大，甚至Core号也是多余的
  UnorderedRegion local_ur = localPath.URs[localUR];
  UnorderedRegion inter_ur = interPath.URs[interUR];
  std::map<unsigned, unsigned> index2ExeTimes;
  std::map<unsigned, bool> indexIsDisturbed;
  unsigned ret_val = 0;

  // for debug
  std::ofstream myfile;
  std::string fileName = "ZW_F_addr.txt";
  if (ZWDebug) {
    myfile.open(fileName, std::ios_base::app);
    myfile << "Core:" << localCore << " LocalUR:" << localUR << " Core"
            << interCore << " InterUR:" << interUR << "\n";
  }
  for (const auto &local_pair : local_ur.mi2xclass) {
    const llvm::MachineInstr *local_mi = local_pair.first.MI;
    unsigned tmp_exe_times = local_pair.second.x;
    if (local_pair.second.classification !=
        TimingAnalysisPass::dom::cache::CL2_HIT) {
      continue;
    }
    index2ExeTimes[mi2cacheIndex(local_mi)] += tmp_exe_times;
    if (ZWDebug) {
      myfile << "  " << "LocalMI" << local_mi << " Iaddr:"
              << TimingAnalysisPass::StaticAddrProvider->getAddr(local_mi)
              << " Cindex" << mi2cacheIndex(local_mi) << "\n";
    }
  }
  for (const auto &inter_pair : inter_ur.mi2xclass) {
    const llvm::MachineInstr *inter_mi = inter_pair.first.MI;
    if (inter_pair.second.classification ==
        TimingAnalysisPass::dom::cache::CL_HIT) {
      continue;
    }
    indexIsDisturbed[mi2cacheIndex(inter_mi)] = true;
    if (ZWDebug) {
      myfile << "  " << "InterMI" << inter_mi << " Iaddr:"
              << TimingAnalysisPass::StaticAddrProvider->getAddr(inter_mi)
              << " Cindex" << mi2cacheIndex(inter_mi) << "\n";
    }
  }
  for (auto &pair : index2ExeTimes) {
    if (indexIsDisturbed[pair.first]) {
      ret_val += pair.second;
    }
  }
  if (ZWDebug) {
    myfile << "  Contention for " << ret_val << " times\n";
  }
  return ret_val;
}

void Zhangmethod::getExeCntMust() {
  // assert(mi_class[cur_core][cur_func].size() > 0 &&
  //   "We must collect CHMC first");
  for (auto tmp_pair : mi_ur) {
    CtxMI tmp_cm = tmp_pair.first;
    // handle mi access
    // FIXME: for CL that we don't collect
    if (ctxmi_miai[cur_core][cur_func].find(tmp_cm) ==
        ctxmi_miai[cur_core][cur_func].end()) {
      AccessInfo obj;
      obj.classification = TimingAnalysisPass::dom::cache::CL_BOT;
      if (ZWDebug) {
        std::ofstream myfile;
        std::string fileName = "ZW_Uncollected.txt";
        myfile.open(fileName, std::ios_base::app);
        myfile << "Core:" << cur_core << " Func:" << cur_func
                << " MI:" << tmp_cm << " is uncollected\n";
        myfile.close();
      }
    } else {
      ctxmi_miai[cur_core][cur_func][tmp_cm].x = getGlobalUpBd(tmp_cm);
    }
    // handle data access
    std::vector<AccessInfo> tmp_ais = 
      entry2ctxmi2datainfo[cur_func][tmp_cm];
    for(int i=0;i<tmp_ais.size();i++){
      entry2ctxmi2datainfo[cur_func][tmp_cm][i].x = 
        ctxmi_miai[cur_core][cur_func][tmp_cm].x;
    }
  }
}

unsigned Zhangmethod::getExeCntPSI(CtxMI CM) {}

unsigned Zhangmethod::getExeCntPSD(CtxData CD){}

void Zhangmethod::URCalculation(unsigned core, const std::string &function) {
  // 参照analysisDriver.h
  auto MF = TimingAnalysisPass::machineFunctionCollector->getFunctionByName(
      function);
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

  cur_core = core;
  cur_func = function;

  CtxMI firstCM;
  firstCM.MI = firstMI;
  tarjan(firstCM); // module1: 在CFG上获取UR
  getExeCntMust(); // module3: 需要先收集AccessInfo信息，这样下一步得到的信息才完整
  if (ZWDebug) {
    print_mi_cfg(function); // debug
  }
  collectUrInfo(); // module2: 建立UR图和ur为键的信息映射
  collectCEOPInfo(firstCM); // module4: dfs遍历图，并同时建立起CEOP的数据结构
  CEOPs[core][function] = tmpCEOPs;

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

void Zhangmethod::ceopDfs(unsigned u) {
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
    ceopDfs(v);
  }
  tmpPath.pop_back();
  return;
}

void Zhangmethod::collectCEOPInfo(CtxMI firstCM) {
  unsigned s = mi_ur[firstCM];
  ceopDfs(s);
}

void Zhangmethod::collectUrInfo() { // 改为 ur_ctxmi
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

void Zhangmethod::print_mi_cfg(const std::string &function) {
  const std::vector<std::string> colors = {
      "turquoise", "lightblue", "lightgreen", "lightyellow", "white"};
  std::unordered_map<std::string, std::string> func_color_map;
  int color_index = 0;
  std::error_code EC;
  raw_fd_ostream File("ZW_" + function + "_ur_cfg.dot", EC,
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
    File << "  " << "Node" << cm_id_map[CM] << " [label=\"MI" << MI
          << "\\l  ";
    MI->print(File, false, false, true);
    File << "\\l  ";
    std::string tmp_flag = (MI->isTransient()) ? "True" : "False";
    File << "isTransient:" << tmp_flag << "\\l  ";
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
    File << "data access: [\n";
    for(AccessInfo tmpai:entry2ctxmi2datainfo[func_name][CM]){
        File << "[addr_0x";
        TimingAnalysisPass::printHex(File, tmpai.data_addr);
        File << 
            "_cl_" << tmpai.classification << "_age_" << tmpai.age 
            << "_execnt_" << tmpai.x <<"]\n";
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

void Zhangmethod::tarjan(CtxMI CM) {
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

unsigned Zhangmethod::getGlobalUpBd(CtxMI CM) {
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
      x_local *= bd_helper1(MBB, loop);
      if (loop->getParentLoop() != nullptr) {
        x_local *= bd_helper2(loop->getParentLoop());
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
    x_local *= getGlobalUpBd(tmpCM);
  }
  return x_local;
}

unsigned Zhangmethod::bd_helper1(const llvm::MachineBasicBlock *MBB,
                      const llvm::MachineLoop *Loop) {
  unsigned x_local = 1;
  if (TimingAnalysisPass::LoopBoundInfo->hasUpperLoopBound(
          Loop, TimingAnalysisPass::Context())) {
    x_local *= TimingAnalysisPass::LoopBoundInfo->getUpperLoopBound(
        Loop, TimingAnalysisPass::Context());
    // 此函数加了个else已经是以manual而非SCEV优先
  }
  for (auto *Subloop : Loop->getSubLoops()) {
    if (Subloop->getParentLoop() == Loop // 必须是直接儿子，不能是孙子等
        && Subloop->contains(MBB)) {
      x_local *= bd_helper1(MBB, Subloop);
      break; // 不会有两个同时包含的
    }
  }
  return x_local;
}

unsigned Zhangmethod::bd_helper2(const llvm::MachineLoop *Loop) {
  unsigned scalar = 1;
  if (TimingAnalysisPass::LoopBoundInfo->hasUpperLoopBound(
          Loop, TimingAnalysisPass::Context())) {
    scalar *= TimingAnalysisPass::LoopBoundInfo->getUpperLoopBound(
        Loop, TimingAnalysisPass::Context());
  } else {
    assert(0 && "why we have a loop but no LoopBound?");
  }
  if (Loop->getParentLoop() == nullptr) { // 已经是最外层
    return scalar;
  } else {
    scalar *= bd_helper2(Loop->getParentLoop());
  }
  return scalar;
}