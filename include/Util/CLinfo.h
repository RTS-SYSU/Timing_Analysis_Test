#ifndef ZHANG_WEI
#define ZHANG_WEI

#include "Memory/Classification.h"
#include "PartitionUtil/Context.h"
#include "Util/AbstractAddress.h"
#include "Util/PersistenceScope.h"
#include <fstream>
#include <ios>
#include <iostream>

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
  AddrCL(AddrCL const &o) {
    this->address = o.address;
    this->ctx = o.ctx;
    this->CL = o.CL;
    this->age = o.age;
    this->MIAddr = o.MIAddr;
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
           << "|" << std::hex << this->MIAddr << "]\n";
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

class CL_info {
public:
  std::set<AddrCL> AddrCList;
  std::map<TimingAnalysisPass::PersistenceScope, std::set<AddrPS>> AddrPSList;
  void CL_clean() {
    std::set<AddrCL> AddrCList_clean;
    std::map<TimingAnalysisPass::PersistenceScope, std::set<AddrPS>>
        AddrPSList_clean;
    // 清理一下数据
    for (const auto &entry : AddrCList) {
      if (entry.CL == TimingAnalysisPass::dom::cache::CL2_HIT &&
          entry.age == INT_MAX) {
        AddrCL copy(entry);
        copy.CL = TimingAnalysisPass::dom::cache::CL2_MISS;
        AddrCList_clean.insert(copy);
      } else {
        AddrCList_clean.insert(entry);
      }
    }
    for (const auto &entry : AddrPSList) {
      for (auto &a : entry.second) {
        if (a.LEVEL == 2) {
          bool t = true;
          for (auto &b : entry.second) {
            if (a.address == b.address && b.LEVEL == 1) {
              t = false;
              break;
            }
          }
          if (t) {
            AddrPSList_clean[entry.first].insert(a);
          }
        } else {
          AddrPSList_clean[entry.first].insert(a);
        }
      }
    }
    std::ofstream myfile;
    myfile.open("Clist_clean.txt", std::ios_base::trunc);
    for (const auto &entry : AddrCList_clean) {
      entry.print(myfile);
    }
    for (const auto &entry : AddrPSList_clean) {
      myfile << "Scop:" << entry.first << "\n";
      for (auto &a : entry.second) {
        myfile << a;
      }
    }
    myfile.close();
    this->AddrCList = AddrCList_clean;
    this->AddrPSList = AddrPSList_clean;
  }

  void insert_PS(const TimingAnalysisPass::PersistenceScope &s, AddrPS &aps) {
    if (AddrPSList[s].find(aps) != AddrPSList[s].end()) {
      auto it = AddrPSList[s].find(aps);
      auto aclo = *it;
      AddrPSList[s].erase(it); // 删除旧元素
      aps.join(aclo);
      AddrPSList[s].insert(aps); // 重新插入
    } else {
      AddrPSList[s].insert(aps); // 直接插入
    }
  }
  void insert_CL(AddrCL acl) {
    if (AddrCList.find(acl) != AddrCList.end()) {
      auto it = AddrCList.find(acl);
      auto aclo = *it;
      AddrCList.erase(it); // 删除旧元素
      aclo.join(acl);
      AddrCList.insert(aclo); // 重新插入
    } else {
      AddrCList.insert(acl); // 直接插入
    }
  }

  std::ostream &print(std::ostream &stream) const {
    for (const auto &entry : AddrCList) {
      entry.print(stream);
    }
    for (const auto &entry : AddrPSList) {
      stream << "Scop:" << entry.first << "\n";
      for (auto &a : entry.second) {
        stream << a;
      }
    }
  }
};

#endif