#ifndef __G10bAL_vARs__
#define __G10bAL_vARs__

#include "Memory/Classification.h"
#include "PreprocessingAnalysis/AddressInformation.h"
#include "muticoreinfo.h"
#include "llvm/CodeGen/TargetRegisterInfo.h"
#include <ios>
#include <iostream>
#include <string>
#include <system_error>
#include <type_traits>
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
  void print(std::ostream& out) const {
    out << "Function Name: " << functionname << "\n";
    out << "Addresses: ";
    for (const auto &addr : addrlist) {
        out << addr << " ";
    }
    out << "\n";
  }
};

// const char *ClassificationNames[13] = {
//     "Bot", "Hit",    "Miss", "L1unknow", "L2Hit", "F",        "F",
//     "F",   "L2Miss", "F",    "F",        "F",     "L2unknown"};
class AddrCL {
public:
  AddrCL(TimingAnalysisPass::AbstractAddress addr,
         TimingAnalysisPass::Context ctxa,
         TimingAnalysisPass::dom::cache::Classification cl, int a) {
    this->address = addr;
    this->ctx = ctxa;
    this->CL = cl;
    this->age=a;
  }

  TimingAnalysisPass::AbstractAddress address =
      TimingAnalysisPass::AbstractAddress((unsigned)0);
  int age;
  TimingAnalysisPass::dom::cache::Classification CL;
  TimingAnalysisPass::Context ctx;
  // CL不一样就join
  bool operator==(const AddrCL &other) const {
    return this->address == other.address && this->ctx == other.ctx;
  }
  bool operator<(const AddrCL &other) const {
    if (this->CL < other.CL) {
      return true;
    }
    if (this->age < other.age) {
      return true;
    }
    if (this->address < other.address) {
      return true;
    }
    if(this->ctx<other.ctx){
      return true;
    }

    return false;
  }
  // 打印函数
  void print() const {
    std::cout << "Address: " << std::hex << this->address << " : [" << this->CL
              << "  | age : " << std::dec << this->age << "\nContex: " << ctx
              << "]\n";
  }
  friend std::ostream& operator<<(std::ostream& os, AddrCL obj){
    os << "Address: " << std::hex << obj.address << " : [" << obj.CL
              << "  | age : " << std::dec << obj.age << "\nContex: " << obj.ctx
              << "]\n";
    return os;
  }

  bool join(AddrCL other) {
    if (*this == other) {
      this->CL.join(other.CL);
      this->age = this->age > other.age ? this->age : other.age;
    } else {
      std::cerr << "Addresses and contexts that do not match cannot be merged";
      return false;
    }
  }
};
extern std::set<AddrCL> IAddrCList;
extern std::set<AddrCL> DAddrCList;

extern std::map<std::string, std::set<functionaddr *>> functiontofs;
extern std::map<std::string, functionaddr *> getfunctionaddr;
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