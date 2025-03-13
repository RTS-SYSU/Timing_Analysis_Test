#ifndef __G10bAL_vARs__
#define __G10bAL_vARs__

#include "Memory/Classification.h"
#include "PreprocessingAnalysis/AddressInformation.h"
#include "Util/PersistenceScope.h"
#include "muticoreinfo.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/TableGen/Record.h"
#include <ios>
#include <iostream>
#include <ostream>
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

class functionaddr {
public:
  functionaddr(std::string f) { this->functionname = f; }
  std::string functionname;
  std::set<unsigned> addrlist;
  // 打印函数
  void print() const {
    std::cout << "Function Name: " << functionname << "\n";
    std::cout << "Addresses: ";
    for (const auto &addr : addrlist) {
      std::cout << addr << " ";
    }
    std::cout << "\n";
  }
};

// const char *ClassificationNames[13] = {
//     "Bot", "Hit",    "Miss", "L1unknow", "L2Hit", "F",        "F",
//     "F",   "L2Miss", "F",    "F",        "F",     "L2unknown"};
class AddrCL {
public:
  AddrCL(TimingAnalysisPass::AbstractAddress addr,
         TimingAnalysisPass::Context ctxa,
         TimingAnalysisPass::dom::cache::Classification cl, int a,
         unsigned aI = 0) {
    this->address = addr;
    this->ctx = ctxa;
    this->CL = cl;
    this->age = a;
    this->MIAddr = aI;
  }

  TimingAnalysisPass::AbstractAddress address =
      TimingAnalysisPass::AbstractAddress((unsigned)0);
  int age;
  TimingAnalysisPass::dom::cache::Classification CL;
  TimingAnalysisPass::Context ctx;
  unsigned MIAddr;

  // CL不一样就join
  bool operator==(const AddrCL &other) const {
    return this->address == other.address && this->ctx == other.ctx &&
           this->MIAddr == other.MIAddr;
  }
  bool operator<(const AddrCL &other) const {
    if (this->address < other.address) {
      return true;
    }
    if (this->ctx < other.ctx) {
      return true;
    }
    if (this->MIAddr < other.MIAddr) {
      return true;
    }
    return false;
  }
  // 打印函数
  std::ostream &print(std::ostream &stream) const {
    stream << "Address: " << std::hex << this->address << " : [" << this->CL
           << "  | age : " << std::dec << this->age << "\nContex: " << ctx
           << "|"<<this->MIAddr<<"]\n";
    return stream;
  }
  bool join(AddrCL &other) {
    if (*this == other) {
      if (this->CL < other.CL) {
        this->CL = other.CL;
        this->age = other.age;
      }
    } else {
      std::cerr << "Addresses and contexts that do not match cannot be merged";
      return false;
    }
  }
};

class AddrPS {
public:
  AddrPS(TimingAnalysisPass::AbstractAddress addr, int a, int l)
      : address(addr), CS_size(a), LEVEL(l) {}

  TimingAnalysisPass::AbstractAddress address =
      TimingAnalysisPass::AbstractAddress((unsigned)0);
  int CS_size; // |CS|
  int LEVEL;   // cache level

  bool operator==(const AddrPS &other) const {
    return this->address == other.address && this->LEVEL == other.LEVEL;
  }

  bool operator<(const AddrPS &other) const {
    if (this->address < other.address) {
      return true;
    }
    if (this->LEVEL < other.LEVEL) {
      return true;
    }
    // if (this->CS_size < other.CS_size) {
    //   return true;
    // }
    return false;
  }
  bool join(AddrPS &other) {
    if (*this == other) {
      if (this->CS_size < other.CS_size)
        this->CS_size = other.CS_size;
    } else {
      std::cerr << "Addresses and contexts that do not match cannot be merged";
      return false;
    }
  }

  // bool join(AddrPS other) {
  //   if (*this == other) {
  //     this->CS_size =
  //         this->CS_size > other.CS_size ? this->CS_size : other.CS_size;
  //   } else {
  //     std::cerr << "Address that do not match cannot be merged";
  //     return false;
  //   }
  // }
  // 打印函数
};
inline std::ostream &operator<<(std::ostream &stream, const AddrPS &ads) {
  stream << "[ Address : " << std::hex << ads.address << std::dec << " | L"
         << ads.LEVEL << " | " << ads.CS_size << "]\n";
  return stream;
}
extern std::set<AddrCL> AddrCList;
extern std::map<TimingAnalysisPass::PersistenceScope, std::set<AddrPS>>
    AddrPSList;
extern std::map<std::string, std::set<functionaddr *>> functiontofs;
extern std::map<std::string, functionaddr *> getfunctionaddr;
// 记录已经分析过执行次数的块
extern std::set<const MachineBasicBlock *> mylist;

extern TimingAnalysisPass::AddressInformation *glAddrInfo;

unsigned getbound(const MachineBasicBlock *MBB,
                  const TimingAnalysisPass::Context &ctx);

void celectaddr(const MachineBasicBlock *MBB,
                const TimingAnalysisPass::Context &ctx);
#endif