////////////////////////////////////////////////////////////////////////////////
//
//   LLVMTA - Timing Analyser performing worst-case execution time analysis
//     using the LLVM backend intermediate representation
//
// Copyright (C) 2013-2022  Saarland University
// Copyright (C) 2014-2015  Claus Faymonville
//
// This file is distributed under the Saarland University Software Release
// License. See LICENSE.TXT for details.
//
// THIS SOFTWARE IS PROVIDED "AS IS", WITHOUT ANY EXPRESSED OR IMPLIED
// WARRANTIES, INCLUDING BUT NOT LIMITED TO, THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE SAARLAND UNIVERSITY, THE
// CONTRIBUTORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DIRECT,
// INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING BUT NOT LIMITED TO PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
// HOWEVER CAUSED OR OTHER LIABILITY, WHETHER IN CONTRACT, STRICT
// LIABILITY, TORT OR OTHERWISE, ARISING IN ANY WAY FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS WITH THE
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH A DAMAGE.
//
////////////////////////////////////////////////////////////////////////////////

#include "LLVMPasses/TimingAnalysisMain.h"
#include "AnalysisFramework/AnalysisDriver.h"
#include "AnalysisFramework/AnalysisResults.h"
#include "AnalysisFramework/CallGraph.h"
#include "LLVMPasses/DispatchFixedLatency.h"
#include "LLVMPasses/DispatchInOrderPipeline.h"
#include "LLVMPasses/DispatchMemory.h"
#include "LLVMPasses/DispatchOutOfOrderPipeline.h"
#include "LLVMPasses/DispatchPretPipeline.h"
#include "LLVMPasses/MachineFunctionCollector.h"
#include "Memory/PersistenceScopeInfo.h"
#include "PartitionUtil/DirectiveHeuristics.h"
#include "PathAnalysis/LoopBoundInfo.h"
#include "PreprocessingAnalysis/AddressInformation.h"
#include "PreprocessingAnalysis/ConstantValueDomain.h"

#include "Util/GlobalVars.h"
#include "Util/Options.h"
#include "Util/Stat.h"
#include "Util/Statistics.h"

#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/Support/Format.h"

#include "llvm/Support/Error.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/JSON.h"
#include "llvm/Support/MemoryBuffer.h"
#include <cmath>
#include <fstream>
#include <limits>
#include <list>
#include <sstream>
#include <string>
#include <type_traits>
#include <utility>

using namespace llvm;
using namespace std;

namespace TimingAnalysisPass {

unsigned getInitialStackPointer() { return InitialStackPointer; }

unsigned getInitialLinkRegister() { return InitialLinkRegister; }

MachineFunction *getAnalysisEntryPoint() {
  auto *Res = machineFunctionCollector->getFunctionByName(AnalysisEntryPoint);
  assert(Res && "Invalid entry point specified");
  return Res;
}

void parseSystemInfo(const std::string &ConfigFile) {
  llvm::ErrorOr<std::unique_ptr<llvm::MemoryBuffer>> FileOrErr =
      llvm::MemoryBuffer::getFile(ConfigFile);
  if (std::error_code EC = FileOrErr.getError()) {
    llvm::errs() << "Error happened when trying to open the file: "
                 << ConfigFile << "\n";
    llvm::errs() << "Error message: " << EC.message() << "\n";
    exit(1);
  }

  llvm::Expected<llvm::json::Value> JsonVal =
      llvm::json::parse(FileOrErr.get()->getBuffer());
  // Check if Error happened
  if (auto Err = JsonVal.takeError()) {
    llvm::errs() << "Error happened when trying to parse the json file: "
                 << ConfigFile << "\n";
    llvm::errs() << "Error message: " << llvm::toString(std::move(Err)) << "\n";
    exit(1);
  }
  // Check if the json file is valid
  if (!JsonVal) {
    llvm::errs() << "Error happened when trying to parse the json file: "
                 << ConfigFile << "\n";
    llvm::errs() << "Error message: " << llvm::toString(JsonVal.takeError())
                 << "\n";
    exit(1);
  }

  auto *ConfigObj = JsonVal->getAsObject();
  if (!ConfigObj) {
    llvm::errs() << "Error happened when trying to parse the json file: "
                 << ConfigFile << "\n";
    exit(1);
  }

  auto *System = ConfigObj->get("system");
  if (System) {
    auto *SystemObj = System->getAsObject();
    auto *cpu = SystemObj->get("cpu");
    if (cpu) {
      auto CPUType = cpu->getAsString();
      if (!CPUType) {
        llvm::errs() << "Not valid 'cpu' arguments\n";
        exit(1);
      }

      if (CPUType->equals("inorder")) {
        MuArchType = MicroArchitecturalType::INORDER;
      }
      // else if (CPUType->equals("strictlyinorder")) {
      //   MuArchType = MicroArchitecturalType::STRICTINORDER;}
      else if (CPUType->equals("outoforder")) {
        MuArchType = MicroArchitecturalType::OUTOFORDER;
      } else {
        llvm::errs() << "No support for " << CPUType << " for now.";
        exit(1);
      }
    }
    auto *memory = SystemObj->get("memory");
    if (memory) {
      auto *Memory = memory->getAsObject();
      if (!Memory) {
        llvm::errs() << "Invalid Config for 'memory', Check file: "
                     << ConfigFile << '\n';
        exit(1);
      }
      auto *L1I = Memory->get("L1I$")->getAsObject();
      if (L1I) {
        if (auto LineSize = L1I->get("LineSize")->getAsInteger()) {
          if (LineSize.getValue() < 0) {
            llvm::errs() << "L1I$ LineSize < 0, which is illegal.\n";
            exit(1);
          }
          Ilinesize = LineSize.getValue();
        }
        if (auto Associativity = L1I->get("Associativity")->getAsInteger()) {
          if (Associativity.getValue() < 0) {
            llvm::errs() << "L1I$ Associativity < 0, which is illegal.\n";
            exit(1);
          }
          Iassoc = Associativity.getValue();
        }
        if (auto Lat = L1I->get("Latency")->getAsInteger()) {
          if (Lat.getValue() < 0) {
            llvm::errs() << "L1I$ Latency < 0, which is illegal.\n";
            exit(1);
          }
          icacheConf.LATENCY = Lat.getValue();
        }
        if (auto Set = L1I->get("Set")->getAsInteger()) {
          if (Set.getValue() < 0) {
            llvm::errs() << "L1I$ Set < 0, which is illegal.\n";
            exit(1);
          }
          Insets = Set.getValue();
        }
      }
      auto *L1D = Memory->get("L1D$")->getAsObject();
      if (L1D) {
        if (auto LineSize = L1D->get("LineSize")->getAsInteger()) {
          if (LineSize.getValue() < 0) {
            llvm::errs() << "L1D$ LineSize < 0, which is illegal.\n";
            exit(1);
          }
          Dlinesize = LineSize.getValue();
        }
        if (auto Associativity = L1D->get("Associativity")->getAsInteger()) {
          if (Associativity.getValue() < 0) {
            llvm::errs() << "L1D$ Associativity < 0, which is illegal.\n";
            exit(1);
          }
          Dassoc = Associativity.getValue();
        }
        if (auto Lat = L1D->get("Latency")->getAsInteger()) {
          if (Lat.getValue() < 0) {
            llvm::errs() << "L1D$ Latency < 0, which is illegal.\n";
            exit(1);
          }
          dcacheConf.LATENCY = Lat.getValue();
        }
        if (auto Set = L1D->get("Set")->getAsInteger()) {
          if (Set.getValue() < 0) {
            llvm::errs() << "L1D$ Set < 0, which is illegal.\n";
            exit(1);
          }
          Dnsets = Set.getValue();
        }
        if (auto *WriteBack = L1D->get("WriteBack")) {
          if (auto WB = WriteBack->getAsBoolean()) {
            DataCacheWriteBack = WB.getValue();
          }
        }
        if (auto *WriteAlloc = L1D->get("WriteAlloc")) {
          if (auto WA = WriteAlloc->getAsBoolean()) {
            DataCacheWriteAllocate = WA.getValue();
          }
        }
      }
      auto *L2 = Memory->get("L2$")->getAsObject();
      if (L2) {
        if (auto LineSize = L2->get("LineSize")->getAsInteger()) {
          if (LineSize.getValue() < 0) {
            llvm::errs() << "L2$ LineSize < 0, which is illegal.\n";
            exit(1);
          }
          L2linesize = LineSize.getValue();
        }
        if (auto Associativity = L2->get("Associativity")->getAsInteger()) {
          if (Associativity.getValue() < 0) {
            llvm::errs() << "L2$ Associativity < 0, which is illegal.\n";
            exit(1);
          }
          L2assoc = Associativity.getValue();
        }
        if (auto Lat = L2->get("Latency")->getAsInteger()) {
          if (Lat.getValue() < 0) {
            llvm::errs() << "L2$ Latency < 0, which is illegal.\n";
            exit(1);
          }
          L2Latency = Lat.getValue();
        }
        if (auto Set = L2->get("Set")->getAsInteger()) {
          if (Set.getValue() < 0) {
            llvm::errs() << "L2$ Set < 0, which is illegal.\n";
            exit(1);
          }
          NN_SET = Set.getValue();
        }
        if (auto *WriteBack = L2->get("WriteBack")) {
          if (auto WB = WriteBack->getAsBoolean()) {
            L2DataCacheWriteBack = WB.getValue();
          }
        }
        if (auto *WriteAlloc = L2->get("WriteAlloc")) {
          if (auto WA = WriteAlloc->getAsBoolean()) {
            L2DataCacheWriteAllocate = WA.getValue();
          }
        }
      }
      auto *mem = Memory->get("mem")->getAsObject();
      if (mem) {
        if (auto Lat = mem->get("Latency")->getAsInteger()) {
          if (Lat.getValue() < 0) {
            llvm::errs() << "Memory Latency < 0, which is illegal.\n";
            exit(0);
          }
          Latency = Lat.getValue();
        }
        if (auto PerWordLat = mem->get("PerWordLatency")->getAsInteger()) {
          if (PerWordLat.getValue() < 0) {
            llvm::errs() << "Memory PerWord Latency < 0, which is illegal.\n";
            exit(0);
          }
          PerWordLatency = PerWordLat.getValue();
        }
      }
      auto *analysis = Memory->get("analysis")->getAsObject();
      if (analysis) {
        if (auto *PersisAnaly = analysis->get("PersistenceAnalysis")) {
          if (auto PA = PersisAnaly->getAsBoolean()) {
            if (PA) {
              InstrCachePersType = PersistenceType::NONE;
              DataCachePersType = PersistenceType::NONE;
              L2CachePersType = PersistenceType::NONE;
            } else {
              InstrCachePersType = PersistenceType::ELEWISE;
              DataCachePersType = PersistenceType::ELEWISE;
              L2CachePersType = PersistenceType::ELEWISE;
            }
          }
        }
        if (auto *SPA = analysis->get("SharePersistenceAnalysis")) {
          if (auto SPAF = SPA->getAsBoolean()) {
            SPersistenceA = SPAF.getValue();
          }
        }
      }
    }
  }
}

void TimingAnalysisMain::parseCoreInfo(const std::string &FileName) {
  // mcif.setSize(CoreNums);
  // Using llvm::json to parse the core information
  llvm::ErrorOr<std::unique_ptr<llvm::MemoryBuffer>> FileOrErr =
      llvm::MemoryBuffer::getFile(FileName);
  if (std::error_code EC = FileOrErr.getError()) {
    llvm::errs() << "Error happened when trying to open the file: " << FileName
                 << "\n";
    llvm::errs() << "Error message: " << EC.message() << "\n";
    exit(1);
  }

  llvm::Expected<llvm::json::Value> JsonVal =
      llvm::json::parse(FileOrErr.get()->getBuffer());
  // Check if Error happened
  if (auto Err = JsonVal.takeError()) {
    llvm::errs() << "Error happened when trying to parse the json file: "
                 << FileName << "\n";
    llvm::errs() << "Error message: " << llvm::toString(std::move(Err)) << "\n";
    exit(1);
  }
  // Check if the json file is valid
  if (!JsonVal) {
    llvm::errs() << "Error happened when trying to parse the json file: "
                 << FileName << "\n";
    llvm::errs() << "Error message: " << llvm::toString(JsonVal.takeError())
                 << "\n";
    exit(1);
  }
  // Convert the json value to a json object
  auto *JsonObj = JsonVal->getAsObject();
  if (!JsonObj) {
    llvm::errs() << "Error happened when trying to convert the json value to "
                    "a json array\n";
    exit(1);
  }

  llvm::json::Array *JsonArr = nullptr;

  if (!JsonObj->get("entries")) {
    llvm::errs() << "Error happened when trying to convert the json value to "
                    "a json array\n";
    exit(1);
  }

  JsonArr = JsonObj->get("entries")->getAsArray();
  if (!JsonArr) {
    llvm::errs() << "Error happened when trying to convert the json value to "
                    "a json array\n";
    exit(1);
  }

  // Iterate the json array
  for (auto it = JsonArr->begin(); it != JsonArr->end(); ++it) {
    auto *Obj = it->getAsObject();
    if (!Obj) {
      llvm::errs() << "Error happened when trying to convert the json value to "
                      "a json object\n";
      exit(1);
    }

    // Get the core number
    auto CoreNum = Obj->get("core")->getAsInteger();
    auto *tasks = Obj->get("tasks")->getAsArray();

    if (!CoreNum) {
      llvm::errs() << "Core number cannot be found\n";
      exit(1);
    }
    if (!tasks) {
      llvm::errs() << "Tasks cannot be found\n";
      exit(1);
    }

    if (this->taskMap.find(CoreNum.getValue()) == this->taskMap.end()) {
      // Create a new entry
      this->taskMap[CoreNum.getValue()] = std::vector<std::string>();
    }

    auto &CurrentCore = this->taskMap[CoreNum.getValue()];

    // llvm::outs() << "Core number: " << CoreNum.getValue() << "\n";
    // Iterate the tasks
    for (auto TaskIt = tasks->begin(); TaskIt != tasks->end(); ++TaskIt) {
      auto *TaskObj = TaskIt->getAsObject();
      if (!TaskObj) {
        llvm::errs() << "Error happened when trying to convert the json value "
                        "to a json object\n";
        exit(1);
      }

      auto TaskName = TaskObj->get("function")->getAsString();
      if (!TaskName) {
        llvm::errs() << "Function name cannot be found\n";
        exit(1);
      }

      // llvm::outs() << "Task name: " << TaskName.getValue() << "\n";
      CurrentCore.push_back(TaskName.getValue().str());
      mcif.addTask(CoreNum.getValue(), TaskName.getValue().str());
    }
  }
}

char TimingAnalysisMain::ID = 0;
TargetMachine *TimingAnalysisMain::TargetMachineInstance = nullptr;

TimingAnalysisMain::TimingAnalysisMain(TargetMachine &TM)
    : MachineFunctionPass(ID) {
  TargetMachineInstance = &TM;
}

TargetMachine &TimingAnalysisMain::getTargetMachine() {
  return *TargetMachineInstance;
}

bool TimingAnalysisMain::runOnMachineFunction(MachineFunction &MF) {
  bool Changed = false;
  return Changed;
}

bool TimingAnalysisMain::doFinalization(Module &M) {
  // 好像用不到？因为后面都会修改这个 AnalysisEntryPoint
  // if (!machineFunctionCollector->hasFunctionByName(AnalysisEntryPoint)) {
  //   outs() << "No Timing Analysis Run. There is no entry point: "
  //          << AnalysisEntryPoint << "\n";
  //   exit(1);
  // }

  // First Change command line arguments
  parseSystemInfo(SystemInfo);

  ofstream Myfile;

  // Default analysis type: timing
  if (AnaType.getBits() == 0) {
    AnaType.addValue(AnalysisType::TIMING);
  }

  Statistics &Stats = Statistics::getInstance();
  Stats.startMeasurement("Complete Analysis");

  if (CoRunnerSensitive) {
    for (int I = 0; I <= UntilIterationMeasurement; ++I) {
      std::string MeasurementId = "Until Iteration ";
      MeasurementId += std::to_string(I);
      Stats.startMeasurement(MeasurementId);
    }
  }

  if (OutputExtFuncAnnotationFile) {
    Myfile.open("ExtFuncAnnotations.csv", ios_base::trunc);
    CallGraph::getGraph().dumpUnknownExternalFunctions(Myfile);
    Myfile.close();
    return false;
  }
  if (!QuietMode) {
    Myfile.open("AnnotatedHeuristics.txt", ios_base::trunc);
    DirectiveHeuristicsPassInstance->dump(Myfile);
    Myfile.close();

    Myfile.open("PersistenceScopes.txt", ios_base::trunc);
    PersistenceScopeInfo::getInfo().dump(Myfile);
    Myfile.close();

    Myfile.open("CallGraph.txt", ios_base::trunc);
    CallGraph::getGraph().dump(Myfile);
    Myfile.close();
  }

  parseCoreInfo(SystemInfo);
  VERBOSE_PRINT(" -> Finished Preprocessing Phase\n");

  // Register output file
  auto &StatManager = StatisticOutputManager::getInstance();
  StatManager.set_dump_file("WCETResults.txt");
  auto &WCETStat = StatManager.insert("WCET Results");

  // A Json Format for dump
  llvm::json::Array WCETArr{};

  for (auto Clist : taskMap) {
    outs() << "Timing Analysis for Core: " << Clist.first << "\n";
    auto CurrentCore = llvm::json::Object{
        {"core", Clist.first},
        {"tasks", llvm::json::Array{}},
    };
    auto *Arr = CurrentCore["tasks"].getAsArray();
    for (string entry : Clist.second) {
      auto CurrentTask = llvm::json::Object{{"function", entry}};
      AnalysisEntryPoint = entry;
      outs() << "Timing Analysis for entry point: " << AnalysisEntryPoint
             << "\n";

      // Dispatch the value analysis
      auto Arch = getTargetMachine().getTargetTriple().getArch();
      if (Arch == Triple::ArchType::arm) {
        dispatchValueAnalysis<Triple::ArchType::arm>();
      } else if (Arch == Triple::ArchType::riscv32) {
        dispatchValueAnalysis<Triple::ArchType::riscv32>();
      } else {
        assert(0 && "Unsupported ISA for LLVM-TA");
      }

      // Get the results
      auto WCET = result[AnalysisType::TIMING];
      uint64_t WCETVal = 0;
      if (!WCET) {
        WCETStat.update(entry, "infinite");
        CurrentTask["WCET"] = "infinite";
      } else {
        WCETVal = WCET.get().ub;
        WCETStat.update(entry, "WCET", std::to_string(WCETVal));
        CurrentTask["WCET"] = WCETVal;
      }
      Arr->push_back(std::move(CurrentTask));
    }
    WCETArr.push_back(std::move(CurrentCore));
  }

  // Dump the WCET results in json format, using llvm
  std::error_code EC;
  llvm::raw_fd_ostream OS("WCET.json", EC);
  llvm::json::Value val(std::move(WCETArr));
  OS << llvm::formatv("{0:4}", val) << '\n';
  OS.flush();
  OS.close();

  return false;
}

template <Triple::ArchType ISA>
void TimingAnalysisMain::dispatchValueAnalysis() {
  ofstream Myfile;

  std::tuple<> NoDep;
  AnalysisDriverInstr<ConstantValueDomain<ISA>> ConstValAna(AnalysisEntryPoint,
                                                            NoDep);
  auto CvAnaInfo = ConstValAna.runAnalysis();

  LoopBoundInfo->computeLoopBoundFromCVDomain(*CvAnaInfo);

  if (OutputLoopAnnotationFile) {
    ofstream Myfile2;
    if (FirstPrintLoop) {
      Myfile.open("CtxSensLoopAnnotations.csv", ios_base::trunc);
      Myfile2.open("LoopAnnotations.csv", ios_base::trunc);
    } else {
      Myfile.open("CtxSensLoopAnnotations.csv", ios_base::app);
      Myfile2.open("LoopAnnotations.csv", ios_base::app);
    }
    LoopBoundInfo->dumpNonUpperBoundLoops(Myfile, Myfile2);
    Myfile2.close();
    Myfile.close();
    if (FirstPrintLoop) {
      FirstPrintLoop = false;
    }
    return;
  }

  for (auto BoundsFile : ManualLoopBounds) {
    LoopBoundInfo->parseManualUpperLoopBounds(BoundsFile.c_str());
  }
  // jjy:循环下界
  if (ParallelPrograms) {
    for (auto BoundsFile : ManuallowerLoopBounds) {
      LoopBoundInfo->parseManualLowerLoopBounds(BoundsFile.c_str());
    }
  }

  if (!QuietMode) {
    Myfile.open("LoopBounds.txt", ios_base::trunc);
    LoopBoundInfo->dump(Myfile);
    Myfile.close();

    Myfile.open("ConstantValueAnalysis.txt", ios_base::trunc);
    CvAnaInfo->dump(Myfile);
    Myfile.close();
  }

  AddressInformationImpl<ConstantValueDomain<ISA>> AddrInfo(*CvAnaInfo);
  // 收集地址信息
  if (Addressinfo.empty()) {
    for (auto Clist : taskMap) {
      for (string entry : Clist.second) {
        Addressinfo.emplace(entry, std::set<unsigned>());
      }
    }
    for (auto *currFunc : machineFunctionCollector->getAllMachineFunctions()) {
      string funcName = currFunc->getName().str();
      if (Addressinfo.count(funcName) == 0) {
        break;
      }
      for (auto currBB = currFunc->begin(); currBB != currFunc->end();
           ++currBB) {
        for (auto currMI = currBB->begin(); currMI != currBB->end(); ++currMI) {
          if (StaticAddrProvider->Ins2addr.find(&*currMI) !=
              StaticAddrProvider->Ins2addr.end()) {
            Addressinfo[funcName].emplace(
                StaticAddrProvider->Ins2addr[&*currMI]);
          }
        }
      }
    }
  }

  if (!QuietMode) {
    Myfile.open("AddressInformation.txt", ios_base::trunc);
    AddrInfo.dump(Myfile);
    Myfile.close();
  }

  VERBOSE_PRINT(" -> Finished Value & Address Analysis\n");

  // Set and check the parameters of the instruction and data cache
  icacheConf.LINE_SIZE = Ilinesize;
  icacheConf.ASSOCIATIVITY = Iassoc;
  icacheConf.N_SETS = Insets;
  icacheConf.LEVEL = 1;
  icacheConf.checkParams();

  dcacheConf.LINE_SIZE = Dlinesize;
  dcacheConf.ASSOCIATIVITY = Dassoc;
  dcacheConf.N_SETS = Dnsets;
  dcacheConf.WRITEBACK = DataCacheWriteBack;
  dcacheConf.WRITEALLOCATE = DataCacheWriteAllocate;
  dcacheConf.LEVEL = 1;
  dcacheConf.checkParams();

  l2cacheConf.LINE_SIZE = L2linesize;
  l2cacheConf.N_SETS = NN_SET;
  l2cacheConf.ASSOCIATIVITY = L2assoc;
  l2cacheConf.LATENCY = L2Latency;
  l2cacheConf.LEVEL = 2;
  l2cacheConf.WRITEBACK = L2DataCacheWriteBack;
  l2cacheConf.WRITEALLOCATE = L2DataCacheWriteAllocate;
  l2cacheConf.checkParams();

  // WCET
  // Select the analysis to execute
  dispatchAnalysisType(AddrInfo);

  // No need for constant value information
  delete CvAnaInfo;

  // // Release the call graph instance
  // CallGraph::getGraph().releaseInstance();

  // Write results and statistics
  // Statistics &Stats = Statistics::getInstance();
  // AnalysisResults &Ar = AnalysisResults::getInstance();

  // Stats.stopMeasurement("Complete Analysis");

  Myfile.open("Statistics.txt", ios_base::trunc);
  // Stats.dump(Myfile);
  Myfile.close();

  Myfile.open("TotalBound.xml", ios_base::trunc);
  // Ar.dump(Myfile);
  Myfile.close();
}

void TimingAnalysisMain::dispatchAnalysisType(AddressInformation &AddressInfo) {
  AnalysisResults &Ar = AnalysisResults::getInstance();
  // Timing & CRPD calculation need normal muarch analysis first
  if (AnaType.isSet(AnalysisType::TIMING) ||
      AnaType.isSet(AnalysisType::CRPD)) {
    auto Bound = dispatchTimingAnalysis(AddressInfo);
    // Ar.registerResult("total", Bound);
    if (Bound) {
      outs() << "Calculated Timing Bound: "
             << llvm::format("%-20.0f", Bound.get().ub) << "\n";
    } else {
      outs() << "Calculated Timing Bound: infinite\n";
    }
    this->result[AnalysisType::TIMING] = Bound;
    this->result[AnalysisType::CRPD] = Bound;
  }
  if (AnaType.isSet(AnalysisType::L1ICACHE)) {
    auto Bound = dispatchCacheAnalysis(AnalysisType::L1ICACHE, AddressInfo);
    // Ar.registerResult("icache", Bound);
    if (Bound) {
      outs() << "Calculated "
             << "Instruction Cache Miss Bound: "
             << llvm::format("%-20.0f", Bound.get().ub) << "\n";
    } else {
      outs() << "Calculated "
             << "Instruction Cache Miss Bound: infinite\n";
    }
    this->result[AnalysisType::L1ICACHE] = Bound;
  }
  if (AnaType.isSet(AnalysisType::L1DCACHE)) {
    auto Bound = dispatchCacheAnalysis(AnalysisType::L1DCACHE, AddressInfo);
    // Ar.registerResult("dcache", Bound);
    if (Bound) {
      outs() << "Calculated "
             << "Data Cache Miss Bound: "
             << llvm::format("%-20.0f", Bound.get().ub) << "\n";
    } else {
      outs() << "Calculated "
             << "Data Cache Miss Bound: infinite\n";
    }
    this->result[AnalysisType::L1DCACHE] = Bound;
  }
}

///////////////////////////////////////////////////////////////////////////////
/// Timing Analysis
/// ///////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////

boost::optional<BoundItv>
TimingAnalysisMain::dispatchTimingAnalysis(AddressInformation &AddressInfo) {
  switch (MuArchType) {
  case MicroArchitecturalType::FIXEDLATENCY:
    assert(MemTopType == MemoryTopologyType::NONE &&
           "Fixed latency has no external memory");
    return dispatchFixedLatencyTimingAnalysis();
  case MicroArchitecturalType::PRET:
    return dispatchPretTimingAnalysis(AddressInfo);
  case MicroArchitecturalType::INORDER:
  case MicroArchitecturalType::STRICTINORDER:
    return dispatchInOrderTimingAnalysis(AddressInfo);
  case MicroArchitecturalType::OUTOFORDER:
    return dispatchOutOfOrderTimingAnalysis(AddressInfo);
  default:
    errs() << "No known microarchitecture chosen.\n";
    return boost::none;
  }
}

boost::optional<BoundItv>
TimingAnalysisMain::dispatchCacheAnalysis(AnalysisType Anatype,
                                          AddressInformation &AddressInfo) {
  switch (MuArchType) {
  case MicroArchitecturalType::INORDER:
  case MicroArchitecturalType::STRICTINORDER:
    return dispatchInOrderCacheAnalysis(Anatype, AddressInfo);
  default:
    errs() << "Unsupported microarchitecture for standalone cache "
              "analysis.\n";
    return boost::none;
  }
}

} // namespace TimingAnalysisPass

FunctionPass *llvm::createTimingAnalysisMain(TargetMachine &TM) {
  return new TimingAnalysisPass::TimingAnalysisMain(TM);
}
