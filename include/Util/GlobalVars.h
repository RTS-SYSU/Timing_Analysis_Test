#ifndef __G10bAL_vARs__
#define __G10bAL_vARs__

#include "PreprocessingAnalysis/AddressInformation.h"
#include "muticoreinfo.h"
#include <string>
#include <vector>
extern Multicoreinfo mcif;
extern bool isBCET;
extern std::vector<std::string> conflicFunctions;
extern int IMISS;
extern int DMISS;
extern int STBUS;
extern int L2MISS;
extern int BOUND;
// 记录已经分析过执行次数的块
extern std::set<const MachineBasicBlock *> mylist;

extern TimingAnalysisPass::AddressInformation *glAddrInfo;

unsigned getbound(const MachineBasicBlock *MBB,
                  const TimingAnalysisPass::Context &ctx);

void celectaddr(const MachineBasicBlock *MBB,
                const TimingAnalysisPass::Context &ctx);
#endif