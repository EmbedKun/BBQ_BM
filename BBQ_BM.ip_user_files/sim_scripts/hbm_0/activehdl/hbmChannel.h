#include <tlm>
#include <vector>
#include <map>
#include "systemc.h"
#include "xtlm.h"
#include "dram.hpp"
#include "hbm_fmodel_shared_memory.h"

typedef enum { NONE = -1,
               READ = 0,
               WRITE = 1,
               wrSync = 2,
               rdSync = 3 } Fx;

#define REPORT_DEBUG(handler, id, ...)                                        \
  {                                                                           \
    if (handler->get_verbosity_level() == xsc::common_cpp::VERBOSITY::DEBUG) { \
      std::stringstream m_ss, n_ss;                                           \
      m_ss.str("");                                                           \
      n_ss.str("");                                                           \
      n_ss << id;                                                             \
      m_ss << __VA_ARGS__ << std::endl;                                       \
      XSC_REPORT_INFO((*handler), n_ss.str().c_str(), m_ss.str().c_str());       \
    }                                                                         \
  }
#define REPORT_MEDIUM(handler, id, ...)                                        \
  {                                                                            \
    if (handler->get_verbosity_level() == xsc::common_cpp::VERBOSITY::MEDIUM) { \
      std::stringstream m_ss, n_ss;                                            \
      m_ss.str("");                                                            \
      n_ss.str("");                                                            \
      n_ss << id;                                                              \
      m_ss << __VA_ARGS__;                                                     \
      XSC_REPORT_INFO((*handler), n_ss.str().c_str(), m_ss.str().c_str());        \
    }                                                                          \
  }

#define NAME(x) #x

class customWrUtil : public xtlm::xtlm_aximm_target_wr_socket_util {
 public:
  customWrUtil(sc_core::sc_module_name p_name, xtlm::aximm::granularity g_hint, int width_p) :
   xtlm::xtlm_aximm_target_wr_socket_util(p_name, g_hint, width_p), cb_transport_dbg(nullptr){}

  std::function<unsigned(xtlm::aximm_payload&)> cb_transport_dbg;
  unsigned int transport_dbg(xtlm::aximm_payload& trans) {
    if (cb_transport_dbg) {
      return cb_transport_dbg(trans);
    } else {
      return transport_dbg_cb(trans);
    }
  }
  //void registerCb(std::function<unsigned(xtlm::aximm_payload&)> cb){
  //  cb_transport_dbg = cb;
  //}
};
class customRdUtil : public xtlm::xtlm_aximm_target_rd_socket_util {
 public:
  customRdUtil(sc_core::sc_module_name p_name, xtlm::aximm::granularity g_hint, int width_p) :
   xtlm::xtlm_aximm_target_rd_socket_util(p_name, g_hint, width_p), cb_transport_dbg(nullptr){}

  std::function<unsigned(xtlm::aximm_payload&)> cb_transport_dbg;
  unsigned int transport_dbg(xtlm::aximm_payload& trans) {
    if (cb_transport_dbg) {
      return cb_transport_dbg(trans);
    } else {
      return transport_dbg_cb(trans);
    }
  }
  //void registerCb(std::function<unsigned(xtlm::aximm_payload&)> cb){
  //  cb_transport_dbg = cb;
  //}
};

class hbmChannel : public sc_core::sc_module, xtlm::xtlm_aximm_target_base {
 public:
  SC_HAS_PROCESS(hbmChannel);
  hbmChannel(sc_core::sc_module_name nm, uint64_t, uint32_t, std::string, uint32_t, xsc::common_cpp::report_handler*);
  ~hbmChannel();

  //sc_vector<xtlm::xtlm_aximm_target_socket> wr_skt;
  //sc_vector<xtlm::xtlm_aximm_target_socket> rd_skt;
  xtlm::xtlm_aximm_target_socket wr_skt;
  xtlm::xtlm_aximm_target_socket rd_skt;
  //dram d;
  unsigned int transport_dbg(xtlm::aximm_payload&);
  xsc::common_cpp::report_handler* rH;

 private:
  //xtlm::xtlm_aximm_target_wr_socket_util wrUtil;
  customWrUtil wrUtil;
  //xtlm::xtlm_aximm_target_rd_socket_util rdUtil;
  customRdUtil rdUtil;
  hbm_fmodel_base* m_mem_handler;

  void parseAddrMapString(std::string);
  uint32_t extractAddr(uint64_t, std::vector<std::pair<uint32_t, uint32_t>>&);
  uint32_t getBankGrpAddr(uint64_t);
  uint32_t getBankAddr(uint64_t);
  uint32_t getRowAddr(uint64_t);
  uint32_t getColAddr(uint64_t);
  sc_time getRemainingTime(sc_time, sc_time);   //returns remaining time since time of last event until timeboundary, arg1 - timeboundary, arg2 - time of last event
  void waitForRemainingTime(sc_time, sc_time);   //waits for time=getRemainingTime, arg1 - timeboundary, arg2 - time of last event
  void processTrans(xtlm::aximm_payload*, bool);
  void writeMem(uint64_t, std::vector<uint8_t>&);
  void readMem(uint64_t, std::vector<uint8_t>&);

  void writeToSharedMem(xtlm::aximm_payload*);

  //sc processess
  void threadSpendTxnDelay();
  void threadWr();
  void threadRd();
  void threadRefreshKeeper();

  //sc events
  //std::map<unsigned, *sc_core::sc_event> wrTxDone;
  //std::map<unsigned, *sc_core::sc_event> rdTxDone;
  sc_core::sc_event wrTxDone;
  sc_core::sc_event rdTxDone;
  sc_core::sc_event dramIdle;

  tlm::tlm_fifo< std::pair<uint64_t,Fx>> cmdQueue;

  typedef std::vector<std::pair<uint32_t, uint32_t>> vPUint32t;
  std::vector<std::pair<uint32_t, uint32_t>> bankGrpAddrBits;
  std::vector<std::pair<uint32_t, uint32_t>> bankAddrBits;
  std::vector<std::pair<uint32_t, uint32_t>> rowAddrBits;
  std::vector<std::pair<uint32_t, uint32_t>> colAddrBits;

 private:
  enum class dramState { IDLE = 0,
                         REFRESH };
  dramState state;
  bool dbiOnOff;
  bool speedBin;
  bool latencyEnabled;
  Memory mem;

  uint64_t memStartAddr;
  uint32_t memSize;

  //latency variables in terms of time
  sc_core::sc_time Ck;  //time period of tCK;
  sc_time tRc;          //activate to activate command period
  sc_time tRefi;
  sc_time tRfc;        //min cks after Refresh Command
  sc_time tActivate;    //Cks needed for page activation
  sc_time tRrdL;        //time before activate Bank A to activate Bank B, same BG
  sc_time tRrdS;        //time before activate Bank A to activate Bank B, diff BG
  sc_time tRtpL;        //read to precharge command delay b/w same bank;
  sc_time tRp;          //precharge command period
  sc_time tRas;         //minimum time needed b/w activation and precharge of a page.
  sc_time tRcdrd;       //min ck after activate but before read col cmd.
  sc_time tRcdwr;       //min ck after activate but before write col cmd.
  sc_time tRl;          //Read Latency
  sc_time tWl;          //Write Latency
  uint32_t tDqsck;      //latency after RL and WL
  sc_time tFaw;
  sc_time tCcdL;  //
  sc_time tCcdS;
  sc_time tCcdR;
  sc_time tBl;
  sc_time tWr;
  sc_time tWrtl;         //bus turn around time same bank group
  sc_time tWrts;         //bus turn around time different bank group
};
