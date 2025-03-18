#ifndef __G10bAL_vARs__
#define __G10bAL_vARs__

#include "CLinfo.h"
#include "Lianginfo.h"
#include "PreprocessingAnalysis/AddressInformation.h"
#include "Zhangmethod.h"
#include "muticoreinfo.h"
#include "llvm/CodeGen/MachineInstr.h"
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

extern CL_info cl_info;
extern Liangy_info ly_info;
extern Zhangmethod ZW_mth;
//////////////////////////////////////////////////////////////////
extern std::map<std::string, unsigned> func2corenum;
// 记录已经分析过执行次数的块
extern std::set<const MachineBasicBlock *> mylist;

extern TimingAnalysisPass::AddressInformation *glAddrInfo;

unsigned getbound(const MachineBasicBlock *MBB,
                  const TimingAnalysisPass::Context &ctx);

void celectaddr(const MachineBasicBlock *MBB,
                const TimingAnalysisPass::Context &ctx);

void writeAclToMcif();

#endif