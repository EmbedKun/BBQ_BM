#include "hbmModel.h"
#include <cmath>

hbmModel::hbmModel(sc_module_name nm, xsc::common_cpp::properties properties) : sc_module(nm), mProps(properties)
                                                                                ,stack8Hi(mProps.getBool("STACK_8HI"))
                                                                                //,stack8Hi(false)
                                                                                ,numStack(mProps.getLongLong("HBM_STACK"))
                                                                                ,chan("channel")
                                                                                ,channelSize((stack8Hi ? 0x20000000 : 0x10000000))
                                                                                ,axiClkFreq(mProps.getFloat("AXI_CLK_FREQ"))
                                                                                ,if_wr_socket("if_wr_socket")
                                                                                ,if_rd_socket("if_rd_socket")
                                                                                ,hbm_wr_socket("hbm_wr_skt")
                                                                                ,hbm_rd_socket("hbm_rd_skt")
                                                                                ,target_wr_sockets_util("target_wr_util")
                                                                                ,target_rd_sockets_util("target_rd_util")
                                                                                ,initiator_rd_sockets_util("Init_rd_util")
                                                                                ,initiator_wr_sockets_util("Init_wr_util")
                                                                                {
  axiClkPrd = sc_time(double(1000) / axiClkFreq, SC_NS);
  rH = new xsc::common_cpp::report_handler("reportHandlerHbm");

  chan.init(numStack * 16, [this](const char* nm, size_t i) -> hbmChannel* {
      std::string prop_1 = "USER_MC"+std::to_string(i/2)+"_ADDR_BIT";
      std::string prop_2 = "HBM_CLK_FREQ_"+std::to_string(i/16);
      uint64_t mapStart = i * channelSize;
      return new hbmChannel(nm, mapStart, this->channelSize, this->mProps.getString(prop_1), this->mProps.getLongLong(prop_2), this->rH); });

  if_wr_socket.init(numStack * 16, [](const char* nm, size_t i) -> xtlm::xtlm_aximm_target_socket* { return new xtlm::xtlm_aximm_target_socket(nm, HBM_AXI_DATA_WIDTH); });
  if_rd_socket.init(numStack * 16, [](const char* nm, size_t i) -> xtlm::xtlm_aximm_target_socket* { return new xtlm::xtlm_aximm_target_socket(nm, HBM_AXI_DATA_WIDTH); });

  hbm_wr_socket.init(numStack * 16, [](const char* nm, size_t i) -> xtlm::xtlm_aximm_initiator_socket* {
    return new xtlm::xtlm_aximm_initiator_socket(nm, HBM_AXI_DATA_WIDTH); });
  hbm_rd_socket.init(numStack * 16, [](const char* nm, size_t i) -> xtlm::xtlm_aximm_initiator_socket* {
    return new xtlm::xtlm_aximm_initiator_socket(nm, HBM_AXI_DATA_WIDTH); });
  /*target_wr_sockets_util.init(numStack * 16, [](const char* nm, size_t i) -> xtlm::xtlm_aximm_target_wr_socket_util* {
    return new xtlm::xtlm_aximm_target_wr_socket_util(nm, xtlm::aximm::TRANSACTION, HBM_AXI_DATA_WIDTH);
    });*/
  target_wr_sockets_util.init(numStack * 16,[](const char* nm, size_t i)->customWrUtil*{ return new customWrUtil(nm, xtlm::aximm::TRANSACTION, HBM_AXI_DATA_WIDTH);});
  target_rd_sockets_util.init(numStack * 16,[](const char* nm, size_t i)->customRdUtil*{ return new customRdUtil(nm, xtlm::aximm::TRANSACTION, HBM_AXI_DATA_WIDTH);});

  initiator_rd_sockets_util.init(numStack * 16,[](const char* nm, size_t i)->xtlm::xtlm_aximm_initiator_rd_socket_util*{
    return new xtlm::xtlm_aximm_initiator_rd_socket_util(nm, xtlm::aximm::TRANSACTION, HBM_AXI_DATA_WIDTH); });
  initiator_wr_sockets_util.init(numStack * 16,[](const char* nm, size_t i)->xtlm::xtlm_aximm_initiator_wr_socket_util*{
    return new xtlm::xtlm_aximm_initiator_wr_socket_util(nm, xtlm::aximm::TRANSACTION, HBM_AXI_DATA_WIDTH); });

  //if_rd_socket.bind(sc_core::sc_assemble_vector(target_rd_sockets_util, &xtlm::xtlm_aximm_target_rd_socket_util::rd_socket));
  //if_wr_socket.bind(sc_core::sc_assemble_vector(target_wr_sockets_util, &xtlm::xtlm_aximm_target_wr_socket_util::wr_socket));
  if_wr_socket.bind(sc_core::sc_assemble_vector<customWrUtil, xtlm::xtlm_aximm_target_socket>(target_wr_sockets_util, &customWrUtil::wr_socket));
  if_rd_socket.bind(sc_core::sc_assemble_vector<customRdUtil, xtlm::xtlm_aximm_target_socket>(target_rd_sockets_util, &customRdUtil::rd_socket));

  sc_core::sc_assemble_vector(initiator_rd_sockets_util, &xtlm::xtlm_aximm_initiator_rd_socket_util::rd_socket).bind(hbm_rd_socket);
  hbm_rd_socket.bind(sc_core::sc_assemble_vector(chan, &hbmChannel::rd_skt));

  sc_core::sc_assemble_vector(initiator_wr_sockets_util, &xtlm::xtlm_aximm_initiator_wr_socket_util::wr_socket).bind(hbm_wr_socket);
  hbm_wr_socket.bind(sc_core::sc_assemble_vector(chan, &hbmChannel::wr_skt));

  for(auto& utl: target_wr_sockets_util){
    utl.cb_transport_dbg = std::bind(&hbmModel::transport_dbg, this, std::placeholders::_1);
  }
  for(auto& utl: target_rd_sockets_util){
    utl.cb_transport_dbg = std::bind(&hbmModel::transport_dbg, this, std::placeholders::_1);
  }

  for (unsigned i = 0; i < (numStack * 16); i++) {
    //std::stringstream ss;
    //ss << "target_rd_socket_" << i;
    //if_rd_socket[i] = new xtlm::xtlm_aximm_target_socket(ss.str().c_str(), HBM_AXI_DATA_WIDTH);
    //ss<< "_util";
    //target_rd_sockets_util[i] = new xtlm::xtlm_aximm_target_rd_socket_util(ss.str().c_str(), xtlm::aximm::TRANSACTION, HBM_AXI_DATA_WIDTH);
    // if_rd_socket[i].bind(target_rd_sockets_util[i].rd_socket);
    std::stringstream spawn_name;
    spawn_name << "handle_slave_rd_" << i;
    sc_core::sc_spawn_options opt;
    opt.spawn_method();
    opt.dont_initialize();
    opt.set_sensitivity(&(target_rd_sockets_util[i].transaction_available));
    sc_spawn(sc_bind(&hbmModel::handleSlaveReadCmd, this, i), spawn_name.str().c_str(), &opt);

    //ss.str("");
    //ss << "target_wr_socket_" << i;
    //if_wr_socket[i] = new xtlm::xtlm_aximm_target_socket(ss.str().c_str(), HBM_AXI_DATA_WIDTH);
    //ss << "_util";
    //target_wr_sockets_util[i] = new xtlm::xtlm_aximm_target_wr_socket_util(ss.str().c_str(), xtlm::aximm::TRANSACTION, HBM_AXI_DATA_WIDTH);
    //if_wr_socket[i].bind(target_wr_sockets_util[i].wr_socket);
    spawn_name.str("");
    spawn_name << "handle_slave_wr_" << i;
    sc_core::sc_spawn_options opt1;
    opt1.spawn_method();
    opt1.dont_initialize();
    opt1.set_sensitivity(&(target_wr_sockets_util[i].transaction_available));
    sc_spawn(sc_bind(&hbmModel::handleSlaveWriteCmd, this, i), spawn_name.str().c_str(), &opt1);
  }

  for (unsigned i = 0; i < (numStack * 16); i++) {
    //std::stringstream ss;
    //ss << "initiator_rd_socket_" << i;
    //hbm_rd_socket[i] = new xtlm::xtlm_aximm_initiator_socket(ss.str().c_str(), HBM_AXI_DATA_WIDTH);
    //ss << "_util";
    //initiator_rd_sockets_util[i] = new xtlm::xtlm_aximm_initiator_rd_socket_util(ss.str().c_str(), xtlm::aximm::TRANSACTION, HBM_AXI_DATA_WIDTH);
    //initiator_rd_sockets_util[i].rd_socket.bind(hbm_rd_socket[i]);
    //hbm_rd_socket[i].bind(*(chan[i].rd_skt));
    std::stringstream spawn_name;
    spawn_name << "handle_slave_rd_resp_" << i;
    sc_core::sc_spawn_options opt;
    opt.spawn_method();
    opt.dont_initialize();
    opt.set_sensitivity(&(initiator_rd_sockets_util[i].data_available));
    sc_spawn(sc_bind(&hbmModel::handleSlaveReadResp, this, i), spawn_name.str().c_str(), &opt);

    //ss.str("");
    //ss << "initiator_wr_socket_" << i;
    //hbm_wr_socket[i] = new xtlm::xtlm_aximm_initiator_socket(ss.str().c_str(), HBM_AXI_DATA_WIDTH);
    //ss << "_util";
    //initiator_wr_sockets_util[i] = new xtlm::xtlm_aximm_initiator_wr_socket_util(ss.str().c_str(), xtlm::aximm::TRANSACTION, HBM_AXI_DATA_WIDTH);
    //initiator_wr_sockets_util[i].wr_socket.bind(hbm_wr_socket[i]);
    //hbm_wr_socket[i].bind(*(chan[i].wr_skt));
    spawn_name.str("");
    spawn_name << "handle_slave_wr_resp_" << i;
    sc_core::sc_spawn_options opt1;
    opt1.spawn_method();
    opt1.dont_initialize();
    opt1.set_sensitivity(&(initiator_wr_sockets_util[i].resp_available));
    sc_spawn(sc_bind(&hbmModel::handleSlaveWriteResp, this, i), spawn_name.str().c_str(), &opt1);
  }

  const char* envHwEmuLatencyDis = std::getenv("HW_EM_DISABLE_LATENCY");
  bool latDisabled = (envHwEmuLatencyDis != nullptr) && ((strcmp(envHwEmuLatencyDis, "true") == 0) ||
                                                         (strcmp(envHwEmuLatencyDis, "TRUE") == 0) ||
                                                         (strcmp(envHwEmuLatencyDis, "1") == 0));
  if (latDisabled) {
    latencyEnabled = false;
  } else {
    latencyEnabled = true;
  }
}

hbmModel::~hbmModel() {
}

unsigned int hbmModel::transport_dbg(xtlm::aximm_payload& trans) {
  unsigned channel = getHbmChannel(trans.get_address());
  if (trans.get_command() == xtlm::XTLM_WRITE_COMMAND) {
    return initiator_wr_sockets_util[channel].transport_dbg(trans);
  } else if (trans.get_command() == xtlm::XTLM_READ_COMMAND) {
    return initiator_rd_sockets_util[channel].transport_dbg(trans);
  }else{
    return 0;
  }
}

void hbmModel::handleSlaveReadCmd(int i) {
  REPORT_DEBUG( rH, this->name()<<".tarRdSktUtilsCb" , this->name() << "Received read TX on Fabric port["<<dec<<i<<"]")
  xtlm::aximm_payload* trans = target_rd_sockets_util[i].peek_transaction();
  unsigned channel = getHbmChannel(trans->get_address());
  unsigned lat = getSwitchLatency(i, channel);
  sc_time latDelay = lat * axiClkPrd;

  if (initiator_rd_sockets_util[channel].is_slave_ready()) {
    trans = target_rd_sockets_util[i].get_transaction();
    trans->set_axi_id(getUniqAxiId(std::make_pair(trans->get_axi_id(), i)));
    REPORT_DEBUG(rH, this->name()<<".tarRdSktUtilsCb", "@"<<sc_time_stamp()<<" - Sending read TX to channel["<<dec<<channel<<"] with delay ="<<lat<<"Cks|"<<latDelay);
    initiator_rd_sockets_util[channel].send_transaction(*trans, latDelay);
  } else {
    next_trigger(initiator_rd_sockets_util[channel].transaction_sampled);
  }
}

void hbmModel::handleSlaveWriteCmd(int i) {
  REPORT_DEBUG( rH, this->name()<<".tarWrSktUtilsCb" , this->name() << "Received write TX on Fabric port[" <<dec<<i<<"]")
  xtlm::aximm_payload* trans = target_wr_sockets_util[i].peek_transaction();
  unsigned channel = getHbmChannel(trans->get_address());
  unsigned lat = getSwitchLatency(i, channel);
  sc_time latDelay = lat * axiClkPrd;

  if (initiator_wr_sockets_util[channel].is_slave_ready()) {
    trans = target_wr_sockets_util[i].get_transaction();
    trans->set_axi_id(getUniqAxiId(std::make_pair(trans->get_axi_id(), i)));
    REPORT_DEBUG(rH, this->name()<<".tarRdSktUtilsCb", "@"<<sc_time_stamp()<<" - Sending write TX to channel["<<dec<<channel<<"] with delay ="<<lat<<"Cks|"<<latDelay);
    initiator_wr_sockets_util[channel].send_transaction(*trans, latDelay);
  } else {
    next_trigger(initiator_wr_sockets_util[channel].transaction_sampled);
  }
}

void hbmModel::handleSlaveReadResp(int i) {
  REPORT_DEBUG( rH, this->name()<<".InitRdSktUtilsCb" , this->name() << "Received Read Response on Hbm Channel[" <<dec<<i<<"]")
  xtlm::aximm_payload* trans = initiator_rd_sockets_util[i].peek_data();
  std::pair<uint32_t, uint32_t> p = getOrigIds(trans->get_axi_id());
  unsigned lat = getSwitchLatency(p.second, i);
  sc_time latDelay = lat * axiClkPrd;

  if (target_rd_sockets_util[p.second].is_master_ready()) {
    trans = initiator_rd_sockets_util[i].get_data();
    trans->set_axi_id(p.first);
    REPORT_DEBUG(rH, this->name()<<".InitRdSktUtilsCb", "@"<<sc_time_stamp()<<" - Sending read data back on Fabric Port["<<dec<<p.second<<"] with delay ="<<lat<<"Cks|"<<latDelay);
    target_rd_sockets_util[p.second].send_data(*trans, latDelay);
  } else {
    next_trigger(initiator_rd_sockets_util[i].data_available);
  }
}

void hbmModel::handleSlaveWriteResp(int i) {
  REPORT_DEBUG( rH, this->name()<<".InitWrSktUtilsCb" , this->name() << "Received Write Response on Hbm Channel[" <<dec<<i<<"]")
  xtlm::aximm_payload* trans = initiator_wr_sockets_util[i].peek_resp();
  std::pair<uint32_t, uint32_t> p = getOrigIds(trans->get_axi_id());
  unsigned lat = getSwitchLatency(p.second, i);
  sc_time latDelay = lat * axiClkPrd;

  if (target_wr_sockets_util[p.second].is_master_ready()) {
    trans = initiator_wr_sockets_util[i].get_resp();
    trans->set_axi_id(p.first);
    REPORT_DEBUG(rH, this->name()<<".InitWrSktUtilsCb", "@"<<sc_time_stamp()<<" - Sending write resp on Fabric Port["<<dec<<p.second<<"] with delay ="<<lat<<"Cks|"<<latDelay);
    target_wr_sockets_util[p.second].send_resp(*trans, latDelay);
  } else {
    next_trigger(initiator_wr_sockets_util[i].resp_available);
  }
}

//function returns number of clks wrt switching latency on path b/w fabric master and hbm channel
unsigned hbmModel::getSwitchLatency(unsigned init, unsigned tar) {
  if (latencyEnabled) {
    unsigned switchXs = (init > tar) ? (init - tar) : (tar - init);
    switchXs = (switchXs / 4) + 1;
    return (10 + (switchXs * 2) + ((switchXs > 4) ? 10 : 0));
  } else {
    return 0;
  }
  //formula for total RD/Wr latency for full to&fropath
  //(Switch enabled? 20 : 0) + (# of Quad Switch crossings * 4) + (Async Bridge crossing? 20 : 0) + (Read open page? 86 : 104) + 4 (BLI)
  //the formula used has been modified for individual forward/backward; page latencies are taken care further in channel model.
}

unsigned hbmModel::getHbmChannel(uint64_t addr) {
  unsigned portBits = (addr >> (stack8Hi ? 29 : 28)) & 0x1F;  //for stack 4H/8H addr bits [31:28]/[32:29] are used to select AXI Port resp.
  return portBits;
}

uint64_t hbmModel::getUniqAxiId(std::pair<uint32_t, uint32_t> id) {  //see https://en.wikipedia.org/wiki/Pairing_function
  uint32_t axiId = id.first;
  uint32_t mstPortId = id.second;
  return ((uint64_t(axiId + mstPortId + 1) * uint64_t(axiId + mstPortId)) / 2) + mstPortId;
}
std::pair<uint32_t, uint32_t> hbmModel::getOrigIds(uint64_t uId) {
  double w = floorl(((sqrt(8 * uId + 1) - 1) / 2));
  long double t = ((w * w) + w) / 2;
  uint32_t mstPortId = uint32_t(uId - uint64_t(t));
  uint32_t axiId = uint32_t(uint64_t(w) - mstPortId);
  return std::make_pair(axiId, mstPortId);
}
