#ifndef JJY
#define JJY

#include "Options.h"
#include "Util/CLinfo.h"
#include "Util/PersistenceScope.h"
#include "Util/Zhangmethod.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineLoopInfo.h"
#include <climits>
#include <cstdint>
#include <vector>
#include <stdio.h>

struct BlockInfo {
  unsigned address;
  unsigned exe_cnt; //执行次数
  int age;     // 年龄，非持久性块使用
  int cs_size; // 冲突集，持久性块专用
  int cap;  // 持久性块逐出最小cache数
  TimingAnalysisPass::dom::cache::Classification cl;
  BlockInfo() : cs_size(INT_MAX) {}
  BlockInfo(unsigned addr, unsigned cnt, int a,
            TimingAnalysisPass::dom::cache::Classification c,
            int sz = INT_MAX) {
    this->address = addr;
    this->exe_cnt = cnt;
    this->age = a;
    this->cs_size = sz;   // 这是一个注释
    this->cl = c;
    this->cap = std::max(int(L2assoc-cs_size),0);
  }

  bool operator <(const BlockInfo& a) const{  // 辅助函数，用于set<BlockInfo>
    if (address != a.address) return address < a.address;
    else if (age != a.age)  return age < a.age;
    else if (exe_cnt != a.exe_cnt)  return exe_cnt < a.exe_cnt;
    return cap < a.cap;          
  }

};


class OurM {
public:
  typedef std::vector<BlockInfo> UR;
  typedef std::vector<UR> Ceop;
  typedef std::vector<Ceop> Ceops;
  std::map<std::string, Ceops> f2ceops;

  static unsigned getIndex(unsigned addr){ 
    int blockOffset = log2(L2linesize), setOffset = log2(NN_SET);
    if ((1 << blockOffset) < L2linesize) blockOffset++;
    if ((1 << setOffset) < NN_SET) setOffset++;

    return (addr >> blockOffset) & ((1 << setOffset) - 1);
  }
  static unsigned getTag(unsigned addr) {
    int blockOffset = log2(L2linesize), setOffset = log2(NN_SET);
    if ((1 << blockOffset) < L2linesize) blockOffset++;
    if ((1 << setOffset) < NN_SET) setOffset++;

    return addr >> blockOffset >> setOffset;
  }

  struct CR{
    std::vector<BlockInfo> PersistentBlock;
    std::vector<BlockInfo> NotPersistBlock;

    // 非持久性块在给定二进制状态State后，经过指定UR后被逐出的最大次数
    int OutNumber_NotPersistBlock(int& State, UR ur){  
      std::map<unsigned,std::set<unsigned>> setInfo;
      for(auto block:ur){     // 先求出UR中组的情况
          unsigned addr = block.address, index = getIndex(addr), tag = getTag(addr);
          setInfo[index].insert(tag);
      }

      int ans=0;
      for(int i=0;i<NotPersistBlock.size();++i){      // 遍历剩余的非持久性块
          if(State & (1<<i))  continue;
          BlockInfo block = NotPersistBlock[i];
          int age=block.age;
          unsigned addr=block.address, index = getIndex(addr), tag = getTag(addr);
          
          if(setInfo.count(tag))  continue; // 若组里面已经有addr所在的缓存行Tag则跳过
          else if(age + setInfo[index].size() > L2assoc)
                ++ans, State |= (1<<i);   
      }
      return ans;
    }

    // 持久性块在指定UR中被逐出次数
    std::vector<int> OutNumber_PersistentBlock(UR ur){
      std::vector<int> anss;
      for(auto block:PersistentBlock){
        int sum = 0, L = 0, R = 0, ans = 0, cap = block.cap,
            cnt = block.exe_cnt;
        for (auto block : ur)
          sum += block.exe_cnt;
        R = std::min(
            cnt,
            sum / cap); ///////////////////////////////////////////////////////
        while (L <= R) {
          int mid = L + R >> 1, temp = 0;
          for (auto block : ur)
            temp += std::min(mid, int(block.exe_cnt));
          if (temp >= cap * mid)
            L = mid, ans = mid;
          else
            R = mid;
          }
          anss.emplace_back(ans);
      }
      return anss;
    }

    // 根据持久性块被逐出的情况更新Cr并对令下一个UR继承遗产  //////////////////////////////////////////////////////
    void updataCrUr(std::vector<int>PersistOut, UR ur, UR &NextUr){
      int mxOut = 0;
      for(int i=0;i<PersistentBlock.size();++i){
          int num = PersistOut[i];
          mxOut = std::max(mxOut, num);   // 记录cr中单个持久性块被逐出的最大次数（即ur中block理论最高逐出次数）
          PersistentBlock[i].exe_cnt -= num;
      }
      for(auto block:ur){
        if (block.exe_cnt >
            mxOut) // 先不考虑下一个ur和上一个ur有相同address的block的情况
          block.exe_cnt = 1, NextUr.push_back(block);
      }
    }
  };

  struct CRs{
    std::vector<CR> crs;

    // 每条路径都需要初始化一次CRs
    CRs(Ceop ceop){   
      // 记录每个UR中包含的区间左端点和区间右端点（非持久性块）
      std::vector<std::vector<BlockInfo>> leftNodesInURs, rightNodesInURs;
      // 记录每个UR拥有的持久性块（注意判定持久性块的方式 cnt cap）
      std::vector<BlockInfo> PersistBlockInURs;
      leftNodesInURs.resize(ceop.size()), rightNodesInURs.resize(ceop.size());
      PersistBlockInURs.resize(ceop.size());
      
      std::map<unsigned, int> LastURforBlock; // Block addr 到最近 UR 位置的映射
      for (int i = 0; i < ceop.size(); ++i) {
          for (auto block : ceop[i]) {
            int cnt = block.exe_cnt, age = block.age, cap = block.cap;
            unsigned addr = block.address;

            // 持久性块单独处理（要求不存在cap <= 0的块）
            // ///////////////////////////////////
            if (cnt > 1)
              PersistBlockInURs.push_back(block);
            // 检查是否成对出现且不在缓存外
            else if (LastURforBlock.count(addr) &&
                     LastURforBlock[addr] + 1 < i && age >= 0) {
              int leftUR = LastURforBlock[addr] + 1, rightUR = i;
              leftNodesInURs[leftUR].push_back(block);
              rightNodesInURs[rightUR].push_back(block); 
              }
              LastURforBlock[addr] = i;
          }
      }

      // 遍历UR开始划分CR
      std::set<BlockInfo> NotPersistBlocks;
      for (int i = 0; i < ceop.size(); ++i) {
          // 若UR存在区间端点需要生成新的CR
          if (!leftNodesInURs[i].empty() || !rightNodesInURs[i].empty() || !PersistBlockInURs.empty()) {  
              CR cr;
              cr.NotPersistBlock.assign(NotPersistBlocks.begin(), NotPersistBlocks.end());
              cr.PersistentBlock.assign(PersistBlockInURs.begin(), PersistBlockInURs.end());
              crs.push_back(cr);   // 注意cr内元素默认升序

              // 更新block id
              for (auto &p : leftNodesInURs[i]) NotPersistBlocks.insert(p);
              for (auto &p : rightNodesInURs[i]) NotPersistBlocks.erase(p);
          }
      }

    }

    int DpMaxOutNumber(Ceop Urs){
      // dp[k][i][j] = 第K个CR在二进制状态i的条件下，最远分配到干扰任务的第j个UR的最大逐出次数，由于k-2后数据没有意义，因此只记录上一个dp
      std::vector<std::vector<int>> lastDp;    
      std::vector<int> Urs_Dp_size(Urs.size(), 0);     // 干扰任务URs的长度，作为lastDp的基本单位
      lastDp.push_back(Urs_Dp_size);     // 初始化
      std::vector<BlockInfo> lastCRBlock;   // 记录上一个CR中有什么block id

      for(auto cr:crs){
          std::vector<std::vector<int>> curDp;        // 本轮迭代计算的结果
          int NumNotPersistentBlock = cr.NotPersistBlock.size();
          curDp.resize(1<<NumNotPersistentBlock, Urs_Dp_size);

          // 枚举二进制状态，获取上一个CR的某个block是否被逐出 
          for (int prevState = 0; prevState < lastDp.size(); ++prevState) { 
              int inheritedOut = 0;   // 当前CR初始逐出的block状态

              // 计算继承的Block逐出状态   // 需要处理CR中的非持久块
              for (int bidIdx = 0; bidIdx < lastCRBlock.size(); ++bidIdx) {
                  if (!(prevState & (1 << bidIdx))) continue;
                  unsigned addr = lastCRBlock[bidIdx].address;
                  
                  // 查找当前CR中对应的block
                  for(int bid = 0; bid < cr.NotPersistBlock.size();++bid)
                    if(cr.NotPersistBlock[bid].address == addr){
                      inheritedOut |= (1<<bid);
                      break;
                    }
              }

              CR cr2 = cr;    // 由于cr、Urs都涉及到修改操作，因此需要开一个副本
              Ceop Urs2 = Urs; 
              // 遍历干扰任务起始位置
              for (int startUR = 0; startUR < Urs.size(); ++startUR) {
                  int curOut = inheritedOut, totalOut = 0;

                  // 模拟干扰任务执行
                  for (int curUR = startUR; curUR < Urs.size(); ++curUR) {
                      totalOut += cr2.OutNumber_NotPersistBlock(curOut, Urs[curUR]);
                      std::vector<int> PersistOut = cr2.OutNumber_PersistentBlock(Urs[curUR]);
                      for(auto val:PersistOut)    totalOut += val;
                      if(curUR + 1 < Urs.size())  // 只要不是最后一个UR就需要使用遗产
                          cr2.updataCrUr(PersistOut, Urs[curUR], Urs[curUR+1]);

                      // 更新dp状态
                      curDp[curOut][curUR] = std::max(curDp[curOut][curUR], 
                                                  lastDp[prevState][startUR] + totalOut);
                  }
              }

          }
          lastDp.swap(curDp);
          lastCRBlock = cr.NotPersistBlock;
      }
     // 查找最大逐出次数
      int maxVal = 0;
      for (auto& states : lastDp)
          for (int val : states)
              maxVal = std::max(maxVal, val);
      return maxVal;
    }
  };


  OurM(Zhangmethod zm, CL_info &cl_infor) {
    for (auto &tmp_core : zm.CEOPs) {
      unsigned core_num = tmp_core.first;
      // FIXME, core_num is nor used now
      for (auto &tmp_task : tmp_core.second) {
        std::string f_name = tmp_task.first;
        Ceops ceops_res;
        for (auto &tmp_ceop : tmp_task.second) {
          Ceop ceop_res;
          for (auto &tmp_ur : tmp_ceop.URs) {
            UR ur_res;
            for (auto &tmp_pair : tmp_ur.mi2xclass) {
              unsigned addr = TimingAnalysisPass::StaticAddrProvider->getAddr(
                  tmp_pair.first.MI);
              std::vector<BlockInfo> list =
                  getPS(tmp_pair.first, zm.ctxmi2ps_loop_stack,
                        cl_infor.AddrPSList, tmp_pair.second.classification);
              BlockInfo bi_res(addr, tmp_pair.second.x, INT_MAX,
                               tmp_pair.second.classification);
              ur_res.push_back(bi_res);
            }
            // TODO PS is not handle, data access is not handle

            ceop_res.push_back(ur_res);
          }
          ceops_res.push_back(ceop_res);
        }
        f2ceops[f_name] = ceops_res;
      }
    }
  }

private:
  /*get the outmost loop in the same function, so that we can identify an ps
   * scope*/
  /// ctxmi的loop栈，最靠近的loop在vector头部
  std::map<
      std::string,
      std::map<CtxMI, std::vector<std::pair<const llvm::MachineLoop *, bool>>>>
      ctxmi2ps_loop_stack;
  /// ctxdata的loop栈
  // std::map<std::string,
  //          std::map<CtxData,
  //                   std::vector<std::pair<const llvm::MachineLoop *, bool>>>>
  //     ctxdata2ps_loop_stack;

  // std::set<llvm::MachineLoop *> loop_helper(const MachineInstr *MI) {}

  std::vector<BlockInfo>
  getPS(const CtxMI &MI,
        std::map<
            std::string,
            std::map<CtxMI,
                     std::vector<std::pair<const llvm::MachineLoop *, bool>>>>
            ctxmi2ps_loop_stack,
        std::map<TimingAnalysisPass::PersistenceScope, std::set<AddrPS>>
            &AddrPSList,
        TimingAnalysisPass::dom::cache::Classification cl) {
    std::vector<BlockInfo> res;
    // handling PS access
    std::vector<std::pair<const llvm::MachineLoop *, bool>> st;
    for (auto &entry : ctxmi2ps_loop_stack) {
      for (auto &list : entry.second) {
        if (entry.second.find(MI) != entry.second.end()) {
          st = entry.second[MI];
          break;
        }
      }
    }
    int x = 1;
    int CS = INT_MAX;
    unsigned addr = TimingAnalysisPass::StaticAddrProvider->getAddr(MI.MI);
    // 使用普通索引倒序遍历
    for (int i = st.size() - 1; i >= 0; --i) {
      std::pair<const llvm::MachineLoop *, bool> &loop = st[i];
      if (loop.second) {
        for (auto &scop : AddrPSList) {
          if (scop.first.loop == loop.first) {
            for (const AddrPS &ps : scop.second) {
              if (ps.address.getAsInterval().lower() == addr && ps.LEVEL == 2) {
                CS = ps.CS_size; // 在层1上持久的不计
                break;
              }
            }
            break;
          }
        }
        if (TimingAnalysisPass::LoopBoundInfo->hasUpperLoopBound(
                loop.first, TimingAnalysisPass::Context())) {
          int b = TimingAnalysisPass::LoopBoundInfo->getUpperLoopBound(
              loop.first, TimingAnalysisPass::Context());
          if (b - 1 > 0) {
            x *= b - 1;
          }
        }
        res.emplace_back(BlockInfo(addr, x, -1, cl, CS));
      }
    }
    return res;
  }
};

#endif