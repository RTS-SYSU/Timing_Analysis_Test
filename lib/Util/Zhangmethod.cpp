#include "Util/Zhangmethod.h"


void Zhangmethod::run(CL_info &cl_infor) {
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

