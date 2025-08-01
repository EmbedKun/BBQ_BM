// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


#include "hbm_0_sc.h"

#include "hbm_0.h"

#include "hbm_sc.h"

#include <map>
#include <string>





#ifdef XILINX_SIMULATOR
hbm_0::hbm_0(const sc_core::sc_module_name& nm) : hbm_0_sc(nm), HBM_REF_CLK_0("HBM_REF_CLK_0"), AXI_00_ACLK("AXI_00_ACLK"), AXI_00_ARESET_N("AXI_00_ARESET_N"), AXI_00_ARADDR("AXI_00_ARADDR"), AXI_00_ARBURST("AXI_00_ARBURST"), AXI_00_ARID("AXI_00_ARID"), AXI_00_ARLEN("AXI_00_ARLEN"), AXI_00_ARSIZE("AXI_00_ARSIZE"), AXI_00_ARVALID("AXI_00_ARVALID"), AXI_00_AWADDR("AXI_00_AWADDR"), AXI_00_AWBURST("AXI_00_AWBURST"), AXI_00_AWID("AXI_00_AWID"), AXI_00_AWLEN("AXI_00_AWLEN"), AXI_00_AWSIZE("AXI_00_AWSIZE"), AXI_00_AWVALID("AXI_00_AWVALID"), AXI_00_RREADY("AXI_00_RREADY"), AXI_00_BREADY("AXI_00_BREADY"), AXI_00_WDATA("AXI_00_WDATA"), AXI_00_WLAST("AXI_00_WLAST"), AXI_00_WSTRB("AXI_00_WSTRB"), AXI_00_WDATA_PARITY("AXI_00_WDATA_PARITY"), AXI_00_WVALID("AXI_00_WVALID"), APB_0_PWDATA("APB_0_PWDATA"), APB_0_PADDR("APB_0_PADDR"), APB_0_PCLK("APB_0_PCLK"), APB_0_PENABLE("APB_0_PENABLE"), APB_0_PRESET_N("APB_0_PRESET_N"), APB_0_PSEL("APB_0_PSEL"), APB_0_PWRITE("APB_0_PWRITE"), AXI_00_ARREADY("AXI_00_ARREADY"), AXI_00_AWREADY("AXI_00_AWREADY"), AXI_00_RDATA_PARITY("AXI_00_RDATA_PARITY"), AXI_00_RDATA("AXI_00_RDATA"), AXI_00_RID("AXI_00_RID"), AXI_00_RLAST("AXI_00_RLAST"), AXI_00_RRESP("AXI_00_RRESP"), AXI_00_RVALID("AXI_00_RVALID"), AXI_00_WREADY("AXI_00_WREADY"), AXI_00_BID("AXI_00_BID"), AXI_00_BRESP("AXI_00_BRESP"), AXI_00_BVALID("AXI_00_BVALID"), APB_0_PRDATA("APB_0_PRDATA"), APB_0_PREADY("APB_0_PREADY"), APB_0_PSLVERR("APB_0_PSLVERR"), apb_complete_0("apb_complete_0"), DRAM_0_STAT_CATTRIP("DRAM_0_STAT_CATTRIP"), DRAM_0_STAT_TEMP("DRAM_0_STAT_TEMP")
{

  // initialize pins
  mp_impl->HBM_REF_CLK_0(HBM_REF_CLK_0);
  mp_impl->AXI_00_ACLK(AXI_00_ACLK);
  mp_impl->AXI_00_ARESET_N(AXI_00_ARESET_N);
  mp_impl->AXI_00_WDATA_PARITY(AXI_00_WDATA_PARITY);
  mp_impl->APB_0_PWDATA(APB_0_PWDATA);
  mp_impl->APB_0_PADDR(APB_0_PADDR);
  mp_impl->APB_0_PCLK(APB_0_PCLK);
  mp_impl->APB_0_PENABLE(APB_0_PENABLE);
  mp_impl->APB_0_PRESET_N(APB_0_PRESET_N);
  mp_impl->APB_0_PSEL(APB_0_PSEL);
  mp_impl->APB_0_PWRITE(APB_0_PWRITE);
  mp_impl->AXI_00_RDATA_PARITY(AXI_00_RDATA_PARITY);
  mp_impl->APB_0_PRDATA(APB_0_PRDATA);
  mp_impl->APB_0_PREADY(APB_0_PREADY);
  mp_impl->APB_0_PSLVERR(APB_0_PSLVERR);
  mp_impl->apb_complete_0(apb_complete_0);
  mp_impl->DRAM_0_STAT_CATTRIP(DRAM_0_STAT_CATTRIP);
  mp_impl->DRAM_0_STAT_TEMP(DRAM_0_STAT_TEMP);

  // initialize transactors
  mp_SAXI_00_transactor = NULL;
  mp_AXI_00_ARLEN_converter = NULL;
  mp_AXI_00_AWLEN_converter = NULL;

  // initialize socket stubs

}

void hbm_0::before_end_of_elaboration()
{
  // configure 'SAXI_00' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("hbm_0", "SAXI_00_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'SAXI_00' transactor parameters
    xsc::common_cpp::properties SAXI_00_transactor_param_props;
    SAXI_00_transactor_param_props.addLong("DATA_WIDTH", "256");
    SAXI_00_transactor_param_props.addLong("FREQ_HZ", "100000000");
    SAXI_00_transactor_param_props.addLong("ID_WIDTH", "6");
    SAXI_00_transactor_param_props.addLong("ADDR_WIDTH", "33");
    SAXI_00_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("WUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("RUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("BUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("HAS_BURST", "1");
    SAXI_00_transactor_param_props.addLong("HAS_LOCK", "0");
    SAXI_00_transactor_param_props.addLong("HAS_PROT", "0");
    SAXI_00_transactor_param_props.addLong("HAS_CACHE", "0");
    SAXI_00_transactor_param_props.addLong("HAS_QOS", "0");
    SAXI_00_transactor_param_props.addLong("HAS_REGION", "0");
    SAXI_00_transactor_param_props.addLong("HAS_WSTRB", "1");
    SAXI_00_transactor_param_props.addLong("HAS_BRESP", "1");
    SAXI_00_transactor_param_props.addLong("HAS_RRESP", "1");
    SAXI_00_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    SAXI_00_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    SAXI_00_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    SAXI_00_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    SAXI_00_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    SAXI_00_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    SAXI_00_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    SAXI_00_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    SAXI_00_transactor_param_props.addLong("HAS_SIZE", "1");
    SAXI_00_transactor_param_props.addLong("HAS_RESET", "0");
    SAXI_00_transactor_param_props.addFloat("PHASE", "0.000");
    SAXI_00_transactor_param_props.addString("PROTOCOL", "AXI3");
    SAXI_00_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    SAXI_00_transactor_param_props.addString("CLK_DOMAIN", "");

    mp_SAXI_00_transactor = new xtlm::xaximm_pin2xtlm_t<256,33,6,1,1,1,1,1>("SAXI_00_transactor", SAXI_00_transactor_param_props);

    // SAXI_00' transactor ports

    mp_SAXI_00_transactor->ARADDR(AXI_00_ARADDR);
    mp_SAXI_00_transactor->ARBURST(AXI_00_ARBURST);
    mp_SAXI_00_transactor->ARID(AXI_00_ARID);
    mp_AXI_00_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("AXI_00_ARLEN_converter");
    mp_AXI_00_ARLEN_converter->vector_in(AXI_00_ARLEN);
    mp_AXI_00_ARLEN_converter->vector_out(m_AXI_00_ARLEN_converter_signal);
    mp_SAXI_00_transactor->ARLEN(m_AXI_00_ARLEN_converter_signal);
    mp_SAXI_00_transactor->ARREADY(AXI_00_ARREADY);
    mp_SAXI_00_transactor->ARSIZE(AXI_00_ARSIZE);
    mp_SAXI_00_transactor->ARVALID(AXI_00_ARVALID);
    mp_SAXI_00_transactor->AWADDR(AXI_00_AWADDR);
    mp_SAXI_00_transactor->AWBURST(AXI_00_AWBURST);
    mp_SAXI_00_transactor->AWID(AXI_00_AWID);
    mp_AXI_00_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("AXI_00_AWLEN_converter");
    mp_AXI_00_AWLEN_converter->vector_in(AXI_00_AWLEN);
    mp_AXI_00_AWLEN_converter->vector_out(m_AXI_00_AWLEN_converter_signal);
    mp_SAXI_00_transactor->AWLEN(m_AXI_00_AWLEN_converter_signal);
    mp_SAXI_00_transactor->AWREADY(AXI_00_AWREADY);
    mp_SAXI_00_transactor->AWSIZE(AXI_00_AWSIZE);
    mp_SAXI_00_transactor->AWVALID(AXI_00_AWVALID);
    mp_SAXI_00_transactor->BID(AXI_00_BID);
    mp_SAXI_00_transactor->BREADY(AXI_00_BREADY);
    mp_SAXI_00_transactor->BRESP(AXI_00_BRESP);
    mp_SAXI_00_transactor->BVALID(AXI_00_BVALID);
    mp_SAXI_00_transactor->RDATA(AXI_00_RDATA);
    mp_SAXI_00_transactor->RID(AXI_00_RID);
    mp_SAXI_00_transactor->RLAST(AXI_00_RLAST);
    mp_SAXI_00_transactor->RREADY(AXI_00_RREADY);
    mp_SAXI_00_transactor->RRESP(AXI_00_RRESP);
    mp_SAXI_00_transactor->RVALID(AXI_00_RVALID);
    mp_SAXI_00_transactor->WDATA(AXI_00_WDATA);
    mp_SAXI_00_transactor->WLAST(AXI_00_WLAST);
    mp_SAXI_00_transactor->WREADY(AXI_00_WREADY);
    mp_SAXI_00_transactor->WSTRB(AXI_00_WSTRB);
    mp_SAXI_00_transactor->WVALID(AXI_00_WVALID);
    mp_SAXI_00_transactor->CLK(AXI_00_ACLK);
    m_SAXI_00_transactor_rst_signal.write(1);
    mp_SAXI_00_transactor->RST(m_SAXI_00_transactor_rst_signal);

    // SAXI_00' transactor sockets

    mp_impl->SAXI_00_rd_socket->bind(*(mp_SAXI_00_transactor->rd_socket));
    mp_impl->SAXI_00_wr_socket->bind(*(mp_SAXI_00_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
hbm_0::hbm_0(const sc_core::sc_module_name& nm) : hbm_0_sc(nm), HBM_REF_CLK_0("HBM_REF_CLK_0"), AXI_00_ACLK("AXI_00_ACLK"), AXI_00_ARESET_N("AXI_00_ARESET_N"), AXI_00_ARADDR("AXI_00_ARADDR"), AXI_00_ARBURST("AXI_00_ARBURST"), AXI_00_ARID("AXI_00_ARID"), AXI_00_ARLEN("AXI_00_ARLEN"), AXI_00_ARSIZE("AXI_00_ARSIZE"), AXI_00_ARVALID("AXI_00_ARVALID"), AXI_00_AWADDR("AXI_00_AWADDR"), AXI_00_AWBURST("AXI_00_AWBURST"), AXI_00_AWID("AXI_00_AWID"), AXI_00_AWLEN("AXI_00_AWLEN"), AXI_00_AWSIZE("AXI_00_AWSIZE"), AXI_00_AWVALID("AXI_00_AWVALID"), AXI_00_RREADY("AXI_00_RREADY"), AXI_00_BREADY("AXI_00_BREADY"), AXI_00_WDATA("AXI_00_WDATA"), AXI_00_WLAST("AXI_00_WLAST"), AXI_00_WSTRB("AXI_00_WSTRB"), AXI_00_WDATA_PARITY("AXI_00_WDATA_PARITY"), AXI_00_WVALID("AXI_00_WVALID"), APB_0_PWDATA("APB_0_PWDATA"), APB_0_PADDR("APB_0_PADDR"), APB_0_PCLK("APB_0_PCLK"), APB_0_PENABLE("APB_0_PENABLE"), APB_0_PRESET_N("APB_0_PRESET_N"), APB_0_PSEL("APB_0_PSEL"), APB_0_PWRITE("APB_0_PWRITE"), AXI_00_ARREADY("AXI_00_ARREADY"), AXI_00_AWREADY("AXI_00_AWREADY"), AXI_00_RDATA_PARITY("AXI_00_RDATA_PARITY"), AXI_00_RDATA("AXI_00_RDATA"), AXI_00_RID("AXI_00_RID"), AXI_00_RLAST("AXI_00_RLAST"), AXI_00_RRESP("AXI_00_RRESP"), AXI_00_RVALID("AXI_00_RVALID"), AXI_00_WREADY("AXI_00_WREADY"), AXI_00_BID("AXI_00_BID"), AXI_00_BRESP("AXI_00_BRESP"), AXI_00_BVALID("AXI_00_BVALID"), APB_0_PRDATA("APB_0_PRDATA"), APB_0_PREADY("APB_0_PREADY"), APB_0_PSLVERR("APB_0_PSLVERR"), apb_complete_0("apb_complete_0"), DRAM_0_STAT_CATTRIP("DRAM_0_STAT_CATTRIP"), DRAM_0_STAT_TEMP("DRAM_0_STAT_TEMP")
{

  // initialize pins
  mp_impl->HBM_REF_CLK_0(HBM_REF_CLK_0);
  mp_impl->AXI_00_ACLK(AXI_00_ACLK);
  mp_impl->AXI_00_ARESET_N(AXI_00_ARESET_N);
  mp_impl->AXI_00_WDATA_PARITY(AXI_00_WDATA_PARITY);
  mp_impl->APB_0_PWDATA(APB_0_PWDATA);
  mp_impl->APB_0_PADDR(APB_0_PADDR);
  mp_impl->APB_0_PCLK(APB_0_PCLK);
  mp_impl->APB_0_PENABLE(APB_0_PENABLE);
  mp_impl->APB_0_PRESET_N(APB_0_PRESET_N);
  mp_impl->APB_0_PSEL(APB_0_PSEL);
  mp_impl->APB_0_PWRITE(APB_0_PWRITE);
  mp_impl->AXI_00_RDATA_PARITY(AXI_00_RDATA_PARITY);
  mp_impl->APB_0_PRDATA(APB_0_PRDATA);
  mp_impl->APB_0_PREADY(APB_0_PREADY);
  mp_impl->APB_0_PSLVERR(APB_0_PSLVERR);
  mp_impl->apb_complete_0(apb_complete_0);
  mp_impl->DRAM_0_STAT_CATTRIP(DRAM_0_STAT_CATTRIP);
  mp_impl->DRAM_0_STAT_TEMP(DRAM_0_STAT_TEMP);

  // initialize transactors
  mp_SAXI_00_transactor = NULL;
  mp_AXI_00_ARLEN_converter = NULL;
  mp_AXI_00_AWLEN_converter = NULL;

  // initialize socket stubs

}

void hbm_0::before_end_of_elaboration()
{
  // configure 'SAXI_00' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("hbm_0", "SAXI_00_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'SAXI_00' transactor parameters
    xsc::common_cpp::properties SAXI_00_transactor_param_props;
    SAXI_00_transactor_param_props.addLong("DATA_WIDTH", "256");
    SAXI_00_transactor_param_props.addLong("FREQ_HZ", "100000000");
    SAXI_00_transactor_param_props.addLong("ID_WIDTH", "6");
    SAXI_00_transactor_param_props.addLong("ADDR_WIDTH", "33");
    SAXI_00_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("WUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("RUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("BUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("HAS_BURST", "1");
    SAXI_00_transactor_param_props.addLong("HAS_LOCK", "0");
    SAXI_00_transactor_param_props.addLong("HAS_PROT", "0");
    SAXI_00_transactor_param_props.addLong("HAS_CACHE", "0");
    SAXI_00_transactor_param_props.addLong("HAS_QOS", "0");
    SAXI_00_transactor_param_props.addLong("HAS_REGION", "0");
    SAXI_00_transactor_param_props.addLong("HAS_WSTRB", "1");
    SAXI_00_transactor_param_props.addLong("HAS_BRESP", "1");
    SAXI_00_transactor_param_props.addLong("HAS_RRESP", "1");
    SAXI_00_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    SAXI_00_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    SAXI_00_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    SAXI_00_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    SAXI_00_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    SAXI_00_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    SAXI_00_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    SAXI_00_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    SAXI_00_transactor_param_props.addLong("HAS_SIZE", "1");
    SAXI_00_transactor_param_props.addLong("HAS_RESET", "0");
    SAXI_00_transactor_param_props.addFloat("PHASE", "0.000");
    SAXI_00_transactor_param_props.addString("PROTOCOL", "AXI3");
    SAXI_00_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    SAXI_00_transactor_param_props.addString("CLK_DOMAIN", "");

    mp_SAXI_00_transactor = new xtlm::xaximm_pin2xtlm_t<256,33,6,1,1,1,1,1>("SAXI_00_transactor", SAXI_00_transactor_param_props);

    // SAXI_00' transactor ports

    mp_SAXI_00_transactor->ARADDR(AXI_00_ARADDR);
    mp_SAXI_00_transactor->ARBURST(AXI_00_ARBURST);
    mp_SAXI_00_transactor->ARID(AXI_00_ARID);
    mp_AXI_00_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("AXI_00_ARLEN_converter");
    mp_AXI_00_ARLEN_converter->vector_in(AXI_00_ARLEN);
    mp_AXI_00_ARLEN_converter->vector_out(m_AXI_00_ARLEN_converter_signal);
    mp_SAXI_00_transactor->ARLEN(m_AXI_00_ARLEN_converter_signal);
    mp_SAXI_00_transactor->ARREADY(AXI_00_ARREADY);
    mp_SAXI_00_transactor->ARSIZE(AXI_00_ARSIZE);
    mp_SAXI_00_transactor->ARVALID(AXI_00_ARVALID);
    mp_SAXI_00_transactor->AWADDR(AXI_00_AWADDR);
    mp_SAXI_00_transactor->AWBURST(AXI_00_AWBURST);
    mp_SAXI_00_transactor->AWID(AXI_00_AWID);
    mp_AXI_00_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("AXI_00_AWLEN_converter");
    mp_AXI_00_AWLEN_converter->vector_in(AXI_00_AWLEN);
    mp_AXI_00_AWLEN_converter->vector_out(m_AXI_00_AWLEN_converter_signal);
    mp_SAXI_00_transactor->AWLEN(m_AXI_00_AWLEN_converter_signal);
    mp_SAXI_00_transactor->AWREADY(AXI_00_AWREADY);
    mp_SAXI_00_transactor->AWSIZE(AXI_00_AWSIZE);
    mp_SAXI_00_transactor->AWVALID(AXI_00_AWVALID);
    mp_SAXI_00_transactor->BID(AXI_00_BID);
    mp_SAXI_00_transactor->BREADY(AXI_00_BREADY);
    mp_SAXI_00_transactor->BRESP(AXI_00_BRESP);
    mp_SAXI_00_transactor->BVALID(AXI_00_BVALID);
    mp_SAXI_00_transactor->RDATA(AXI_00_RDATA);
    mp_SAXI_00_transactor->RID(AXI_00_RID);
    mp_SAXI_00_transactor->RLAST(AXI_00_RLAST);
    mp_SAXI_00_transactor->RREADY(AXI_00_RREADY);
    mp_SAXI_00_transactor->RRESP(AXI_00_RRESP);
    mp_SAXI_00_transactor->RVALID(AXI_00_RVALID);
    mp_SAXI_00_transactor->WDATA(AXI_00_WDATA);
    mp_SAXI_00_transactor->WLAST(AXI_00_WLAST);
    mp_SAXI_00_transactor->WREADY(AXI_00_WREADY);
    mp_SAXI_00_transactor->WSTRB(AXI_00_WSTRB);
    mp_SAXI_00_transactor->WVALID(AXI_00_WVALID);
    mp_SAXI_00_transactor->CLK(AXI_00_ACLK);
    m_SAXI_00_transactor_rst_signal.write(1);
    mp_SAXI_00_transactor->RST(m_SAXI_00_transactor_rst_signal);

    // SAXI_00' transactor sockets

    mp_impl->SAXI_00_rd_socket->bind(*(mp_SAXI_00_transactor->rd_socket));
    mp_impl->SAXI_00_wr_socket->bind(*(mp_SAXI_00_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // XM_SYSTEMC




#ifdef RIVIERA
hbm_0::hbm_0(const sc_core::sc_module_name& nm) : hbm_0_sc(nm), HBM_REF_CLK_0("HBM_REF_CLK_0"), AXI_00_ACLK("AXI_00_ACLK"), AXI_00_ARESET_N("AXI_00_ARESET_N"), AXI_00_ARADDR("AXI_00_ARADDR"), AXI_00_ARBURST("AXI_00_ARBURST"), AXI_00_ARID("AXI_00_ARID"), AXI_00_ARLEN("AXI_00_ARLEN"), AXI_00_ARSIZE("AXI_00_ARSIZE"), AXI_00_ARVALID("AXI_00_ARVALID"), AXI_00_AWADDR("AXI_00_AWADDR"), AXI_00_AWBURST("AXI_00_AWBURST"), AXI_00_AWID("AXI_00_AWID"), AXI_00_AWLEN("AXI_00_AWLEN"), AXI_00_AWSIZE("AXI_00_AWSIZE"), AXI_00_AWVALID("AXI_00_AWVALID"), AXI_00_RREADY("AXI_00_RREADY"), AXI_00_BREADY("AXI_00_BREADY"), AXI_00_WDATA("AXI_00_WDATA"), AXI_00_WLAST("AXI_00_WLAST"), AXI_00_WSTRB("AXI_00_WSTRB"), AXI_00_WDATA_PARITY("AXI_00_WDATA_PARITY"), AXI_00_WVALID("AXI_00_WVALID"), APB_0_PWDATA("APB_0_PWDATA"), APB_0_PADDR("APB_0_PADDR"), APB_0_PCLK("APB_0_PCLK"), APB_0_PENABLE("APB_0_PENABLE"), APB_0_PRESET_N("APB_0_PRESET_N"), APB_0_PSEL("APB_0_PSEL"), APB_0_PWRITE("APB_0_PWRITE"), AXI_00_ARREADY("AXI_00_ARREADY"), AXI_00_AWREADY("AXI_00_AWREADY"), AXI_00_RDATA_PARITY("AXI_00_RDATA_PARITY"), AXI_00_RDATA("AXI_00_RDATA"), AXI_00_RID("AXI_00_RID"), AXI_00_RLAST("AXI_00_RLAST"), AXI_00_RRESP("AXI_00_RRESP"), AXI_00_RVALID("AXI_00_RVALID"), AXI_00_WREADY("AXI_00_WREADY"), AXI_00_BID("AXI_00_BID"), AXI_00_BRESP("AXI_00_BRESP"), AXI_00_BVALID("AXI_00_BVALID"), APB_0_PRDATA("APB_0_PRDATA"), APB_0_PREADY("APB_0_PREADY"), APB_0_PSLVERR("APB_0_PSLVERR"), apb_complete_0("apb_complete_0"), DRAM_0_STAT_CATTRIP("DRAM_0_STAT_CATTRIP"), DRAM_0_STAT_TEMP("DRAM_0_STAT_TEMP")
{

  // initialize pins
  mp_impl->HBM_REF_CLK_0(HBM_REF_CLK_0);
  mp_impl->AXI_00_ACLK(AXI_00_ACLK);
  mp_impl->AXI_00_ARESET_N(AXI_00_ARESET_N);
  mp_impl->AXI_00_WDATA_PARITY(AXI_00_WDATA_PARITY);
  mp_impl->APB_0_PWDATA(APB_0_PWDATA);
  mp_impl->APB_0_PADDR(APB_0_PADDR);
  mp_impl->APB_0_PCLK(APB_0_PCLK);
  mp_impl->APB_0_PENABLE(APB_0_PENABLE);
  mp_impl->APB_0_PRESET_N(APB_0_PRESET_N);
  mp_impl->APB_0_PSEL(APB_0_PSEL);
  mp_impl->APB_0_PWRITE(APB_0_PWRITE);
  mp_impl->AXI_00_RDATA_PARITY(AXI_00_RDATA_PARITY);
  mp_impl->APB_0_PRDATA(APB_0_PRDATA);
  mp_impl->APB_0_PREADY(APB_0_PREADY);
  mp_impl->APB_0_PSLVERR(APB_0_PSLVERR);
  mp_impl->apb_complete_0(apb_complete_0);
  mp_impl->DRAM_0_STAT_CATTRIP(DRAM_0_STAT_CATTRIP);
  mp_impl->DRAM_0_STAT_TEMP(DRAM_0_STAT_TEMP);

  // initialize transactors
  mp_SAXI_00_transactor = NULL;
  mp_AXI_00_ARLEN_converter = NULL;
  mp_AXI_00_AWLEN_converter = NULL;

  // initialize socket stubs

}

void hbm_0::before_end_of_elaboration()
{
  // configure 'SAXI_00' transactor

  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("hbm_0", "SAXI_00_TLM_MODE") != 1)
  {
    // Instantiate Socket Stubs

  // 'SAXI_00' transactor parameters
    xsc::common_cpp::properties SAXI_00_transactor_param_props;
    SAXI_00_transactor_param_props.addLong("DATA_WIDTH", "256");
    SAXI_00_transactor_param_props.addLong("FREQ_HZ", "100000000");
    SAXI_00_transactor_param_props.addLong("ID_WIDTH", "6");
    SAXI_00_transactor_param_props.addLong("ADDR_WIDTH", "33");
    SAXI_00_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("WUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("RUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("BUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("HAS_BURST", "1");
    SAXI_00_transactor_param_props.addLong("HAS_LOCK", "0");
    SAXI_00_transactor_param_props.addLong("HAS_PROT", "0");
    SAXI_00_transactor_param_props.addLong("HAS_CACHE", "0");
    SAXI_00_transactor_param_props.addLong("HAS_QOS", "0");
    SAXI_00_transactor_param_props.addLong("HAS_REGION", "0");
    SAXI_00_transactor_param_props.addLong("HAS_WSTRB", "1");
    SAXI_00_transactor_param_props.addLong("HAS_BRESP", "1");
    SAXI_00_transactor_param_props.addLong("HAS_RRESP", "1");
    SAXI_00_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    SAXI_00_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    SAXI_00_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    SAXI_00_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    SAXI_00_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    SAXI_00_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    SAXI_00_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    SAXI_00_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    SAXI_00_transactor_param_props.addLong("HAS_SIZE", "1");
    SAXI_00_transactor_param_props.addLong("HAS_RESET", "0");
    SAXI_00_transactor_param_props.addFloat("PHASE", "0.000");
    SAXI_00_transactor_param_props.addString("PROTOCOL", "AXI3");
    SAXI_00_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    SAXI_00_transactor_param_props.addString("CLK_DOMAIN", "");

    mp_SAXI_00_transactor = new xtlm::xaximm_pin2xtlm_t<256,33,6,1,1,1,1,1>("SAXI_00_transactor", SAXI_00_transactor_param_props);

    // SAXI_00' transactor ports

    mp_SAXI_00_transactor->ARADDR(AXI_00_ARADDR);
    mp_SAXI_00_transactor->ARBURST(AXI_00_ARBURST);
    mp_SAXI_00_transactor->ARID(AXI_00_ARID);
    mp_AXI_00_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("AXI_00_ARLEN_converter");
    mp_AXI_00_ARLEN_converter->vector_in(AXI_00_ARLEN);
    mp_AXI_00_ARLEN_converter->vector_out(m_AXI_00_ARLEN_converter_signal);
    mp_SAXI_00_transactor->ARLEN(m_AXI_00_ARLEN_converter_signal);
    mp_SAXI_00_transactor->ARREADY(AXI_00_ARREADY);
    mp_SAXI_00_transactor->ARSIZE(AXI_00_ARSIZE);
    mp_SAXI_00_transactor->ARVALID(AXI_00_ARVALID);
    mp_SAXI_00_transactor->AWADDR(AXI_00_AWADDR);
    mp_SAXI_00_transactor->AWBURST(AXI_00_AWBURST);
    mp_SAXI_00_transactor->AWID(AXI_00_AWID);
    mp_AXI_00_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("AXI_00_AWLEN_converter");
    mp_AXI_00_AWLEN_converter->vector_in(AXI_00_AWLEN);
    mp_AXI_00_AWLEN_converter->vector_out(m_AXI_00_AWLEN_converter_signal);
    mp_SAXI_00_transactor->AWLEN(m_AXI_00_AWLEN_converter_signal);
    mp_SAXI_00_transactor->AWREADY(AXI_00_AWREADY);
    mp_SAXI_00_transactor->AWSIZE(AXI_00_AWSIZE);
    mp_SAXI_00_transactor->AWVALID(AXI_00_AWVALID);
    mp_SAXI_00_transactor->BID(AXI_00_BID);
    mp_SAXI_00_transactor->BREADY(AXI_00_BREADY);
    mp_SAXI_00_transactor->BRESP(AXI_00_BRESP);
    mp_SAXI_00_transactor->BVALID(AXI_00_BVALID);
    mp_SAXI_00_transactor->RDATA(AXI_00_RDATA);
    mp_SAXI_00_transactor->RID(AXI_00_RID);
    mp_SAXI_00_transactor->RLAST(AXI_00_RLAST);
    mp_SAXI_00_transactor->RREADY(AXI_00_RREADY);
    mp_SAXI_00_transactor->RRESP(AXI_00_RRESP);
    mp_SAXI_00_transactor->RVALID(AXI_00_RVALID);
    mp_SAXI_00_transactor->WDATA(AXI_00_WDATA);
    mp_SAXI_00_transactor->WLAST(AXI_00_WLAST);
    mp_SAXI_00_transactor->WREADY(AXI_00_WREADY);
    mp_SAXI_00_transactor->WSTRB(AXI_00_WSTRB);
    mp_SAXI_00_transactor->WVALID(AXI_00_WVALID);
    mp_SAXI_00_transactor->CLK(AXI_00_ACLK);
    m_SAXI_00_transactor_rst_signal.write(1);
    mp_SAXI_00_transactor->RST(m_SAXI_00_transactor_rst_signal);

    // SAXI_00' transactor sockets

    mp_impl->SAXI_00_rd_socket->bind(*(mp_SAXI_00_transactor->rd_socket));
    mp_impl->SAXI_00_wr_socket->bind(*(mp_SAXI_00_transactor->wr_socket));
  }
  else
  {
  }

}

#endif // RIVIERA




#ifdef VCSSYSTEMC
hbm_0::hbm_0(const sc_core::sc_module_name& nm) : hbm_0_sc(nm),  HBM_REF_CLK_0("HBM_REF_CLK_0"), AXI_00_ACLK("AXI_00_ACLK"), AXI_00_ARESET_N("AXI_00_ARESET_N"), AXI_00_ARADDR("AXI_00_ARADDR"), AXI_00_ARBURST("AXI_00_ARBURST"), AXI_00_ARID("AXI_00_ARID"), AXI_00_ARLEN("AXI_00_ARLEN"), AXI_00_ARSIZE("AXI_00_ARSIZE"), AXI_00_ARVALID("AXI_00_ARVALID"), AXI_00_AWADDR("AXI_00_AWADDR"), AXI_00_AWBURST("AXI_00_AWBURST"), AXI_00_AWID("AXI_00_AWID"), AXI_00_AWLEN("AXI_00_AWLEN"), AXI_00_AWSIZE("AXI_00_AWSIZE"), AXI_00_AWVALID("AXI_00_AWVALID"), AXI_00_RREADY("AXI_00_RREADY"), AXI_00_BREADY("AXI_00_BREADY"), AXI_00_WDATA("AXI_00_WDATA"), AXI_00_WLAST("AXI_00_WLAST"), AXI_00_WSTRB("AXI_00_WSTRB"), AXI_00_WDATA_PARITY("AXI_00_WDATA_PARITY"), AXI_00_WVALID("AXI_00_WVALID"), APB_0_PWDATA("APB_0_PWDATA"), APB_0_PADDR("APB_0_PADDR"), APB_0_PCLK("APB_0_PCLK"), APB_0_PENABLE("APB_0_PENABLE"), APB_0_PRESET_N("APB_0_PRESET_N"), APB_0_PSEL("APB_0_PSEL"), APB_0_PWRITE("APB_0_PWRITE"), AXI_00_ARREADY("AXI_00_ARREADY"), AXI_00_AWREADY("AXI_00_AWREADY"), AXI_00_RDATA_PARITY("AXI_00_RDATA_PARITY"), AXI_00_RDATA("AXI_00_RDATA"), AXI_00_RID("AXI_00_RID"), AXI_00_RLAST("AXI_00_RLAST"), AXI_00_RRESP("AXI_00_RRESP"), AXI_00_RVALID("AXI_00_RVALID"), AXI_00_WREADY("AXI_00_WREADY"), AXI_00_BID("AXI_00_BID"), AXI_00_BRESP("AXI_00_BRESP"), AXI_00_BVALID("AXI_00_BVALID"), APB_0_PRDATA("APB_0_PRDATA"), APB_0_PREADY("APB_0_PREADY"), APB_0_PSLVERR("APB_0_PSLVERR"), apb_complete_0("apb_complete_0"), DRAM_0_STAT_CATTRIP("DRAM_0_STAT_CATTRIP"), DRAM_0_STAT_TEMP("DRAM_0_STAT_TEMP")
{
  // initialize pins
  mp_impl->HBM_REF_CLK_0(HBM_REF_CLK_0);
  mp_impl->AXI_00_ACLK(AXI_00_ACLK);
  mp_impl->AXI_00_ARESET_N(AXI_00_ARESET_N);
  mp_impl->AXI_00_WDATA_PARITY(AXI_00_WDATA_PARITY);
  mp_impl->APB_0_PWDATA(APB_0_PWDATA);
  mp_impl->APB_0_PADDR(APB_0_PADDR);
  mp_impl->APB_0_PCLK(APB_0_PCLK);
  mp_impl->APB_0_PENABLE(APB_0_PENABLE);
  mp_impl->APB_0_PRESET_N(APB_0_PRESET_N);
  mp_impl->APB_0_PSEL(APB_0_PSEL);
  mp_impl->APB_0_PWRITE(APB_0_PWRITE);
  mp_impl->AXI_00_RDATA_PARITY(AXI_00_RDATA_PARITY);
  mp_impl->APB_0_PRDATA(APB_0_PRDATA);
  mp_impl->APB_0_PREADY(APB_0_PREADY);
  mp_impl->APB_0_PSLVERR(APB_0_PSLVERR);
  mp_impl->apb_complete_0(apb_complete_0);
  mp_impl->DRAM_0_STAT_CATTRIP(DRAM_0_STAT_CATTRIP);
  mp_impl->DRAM_0_STAT_TEMP(DRAM_0_STAT_TEMP);

  // initialize transactors
  mp_SAXI_00_transactor = NULL;
  mp_AXI_00_ARLEN_converter = NULL;
  mp_AXI_00_AWLEN_converter = NULL;

  // Instantiate Socket Stubs

  // configure SAXI_00_transactor
    xsc::common_cpp::properties SAXI_00_transactor_param_props;
    SAXI_00_transactor_param_props.addLong("DATA_WIDTH", "256");
    SAXI_00_transactor_param_props.addLong("FREQ_HZ", "100000000");
    SAXI_00_transactor_param_props.addLong("ID_WIDTH", "6");
    SAXI_00_transactor_param_props.addLong("ADDR_WIDTH", "33");
    SAXI_00_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("WUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("RUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("BUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("HAS_BURST", "1");
    SAXI_00_transactor_param_props.addLong("HAS_LOCK", "0");
    SAXI_00_transactor_param_props.addLong("HAS_PROT", "0");
    SAXI_00_transactor_param_props.addLong("HAS_CACHE", "0");
    SAXI_00_transactor_param_props.addLong("HAS_QOS", "0");
    SAXI_00_transactor_param_props.addLong("HAS_REGION", "0");
    SAXI_00_transactor_param_props.addLong("HAS_WSTRB", "1");
    SAXI_00_transactor_param_props.addLong("HAS_BRESP", "1");
    SAXI_00_transactor_param_props.addLong("HAS_RRESP", "1");
    SAXI_00_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    SAXI_00_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    SAXI_00_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    SAXI_00_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    SAXI_00_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    SAXI_00_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    SAXI_00_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    SAXI_00_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    SAXI_00_transactor_param_props.addLong("HAS_SIZE", "1");
    SAXI_00_transactor_param_props.addLong("HAS_RESET", "0");
    SAXI_00_transactor_param_props.addFloat("PHASE", "0.000");
    SAXI_00_transactor_param_props.addString("PROTOCOL", "AXI3");
    SAXI_00_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    SAXI_00_transactor_param_props.addString("CLK_DOMAIN", "");

    mp_SAXI_00_transactor = new xtlm::xaximm_pin2xtlm_t<256,33,6,1,1,1,1,1>("SAXI_00_transactor", SAXI_00_transactor_param_props);
  mp_SAXI_00_transactor->ARADDR(AXI_00_ARADDR);
  mp_SAXI_00_transactor->ARBURST(AXI_00_ARBURST);
  mp_SAXI_00_transactor->ARID(AXI_00_ARID);
  mp_AXI_00_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("AXI_00_ARLEN_converter");
  mp_AXI_00_ARLEN_converter->vector_in(AXI_00_ARLEN);
  mp_AXI_00_ARLEN_converter->vector_out(m_AXI_00_ARLEN_converter_signal);
  mp_SAXI_00_transactor->ARLEN(m_AXI_00_ARLEN_converter_signal);
  mp_SAXI_00_transactor->ARREADY(AXI_00_ARREADY);
  mp_SAXI_00_transactor->ARSIZE(AXI_00_ARSIZE);
  mp_SAXI_00_transactor->ARVALID(AXI_00_ARVALID);
  mp_SAXI_00_transactor->AWADDR(AXI_00_AWADDR);
  mp_SAXI_00_transactor->AWBURST(AXI_00_AWBURST);
  mp_SAXI_00_transactor->AWID(AXI_00_AWID);
  mp_AXI_00_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("AXI_00_AWLEN_converter");
  mp_AXI_00_AWLEN_converter->vector_in(AXI_00_AWLEN);
  mp_AXI_00_AWLEN_converter->vector_out(m_AXI_00_AWLEN_converter_signal);
  mp_SAXI_00_transactor->AWLEN(m_AXI_00_AWLEN_converter_signal);
  mp_SAXI_00_transactor->AWREADY(AXI_00_AWREADY);
  mp_SAXI_00_transactor->AWSIZE(AXI_00_AWSIZE);
  mp_SAXI_00_transactor->AWVALID(AXI_00_AWVALID);
  mp_SAXI_00_transactor->BID(AXI_00_BID);
  mp_SAXI_00_transactor->BREADY(AXI_00_BREADY);
  mp_SAXI_00_transactor->BRESP(AXI_00_BRESP);
  mp_SAXI_00_transactor->BVALID(AXI_00_BVALID);
  mp_SAXI_00_transactor->RDATA(AXI_00_RDATA);
  mp_SAXI_00_transactor->RID(AXI_00_RID);
  mp_SAXI_00_transactor->RLAST(AXI_00_RLAST);
  mp_SAXI_00_transactor->RREADY(AXI_00_RREADY);
  mp_SAXI_00_transactor->RRESP(AXI_00_RRESP);
  mp_SAXI_00_transactor->RVALID(AXI_00_RVALID);
  mp_SAXI_00_transactor->WDATA(AXI_00_WDATA);
  mp_SAXI_00_transactor->WLAST(AXI_00_WLAST);
  mp_SAXI_00_transactor->WREADY(AXI_00_WREADY);
  mp_SAXI_00_transactor->WSTRB(AXI_00_WSTRB);
  mp_SAXI_00_transactor->WVALID(AXI_00_WVALID);
  mp_SAXI_00_transactor->CLK(AXI_00_ACLK);
  m_SAXI_00_transactor_rst_signal.write(1);
  mp_SAXI_00_transactor->RST(m_SAXI_00_transactor_rst_signal);

  // initialize transactors stubs
  SAXI_00_transactor_target_wr_socket_stub = nullptr;
  SAXI_00_transactor_target_rd_socket_stub = nullptr;

}

void hbm_0::before_end_of_elaboration()
{
  // configure 'SAXI_00' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("hbm_0", "SAXI_00_TLM_MODE") != 1)
  {
    mp_impl->SAXI_00_rd_socket->bind(*(mp_SAXI_00_transactor->rd_socket));
    mp_impl->SAXI_00_wr_socket->bind(*(mp_SAXI_00_transactor->wr_socket));
  
  }
  else
  {
    SAXI_00_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    SAXI_00_transactor_target_wr_socket_stub->bind(*(mp_SAXI_00_transactor->wr_socket));
    SAXI_00_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    SAXI_00_transactor_target_rd_socket_stub->bind(*(mp_SAXI_00_transactor->rd_socket));
    mp_SAXI_00_transactor->disable_transactor();
  }

}

#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
hbm_0::hbm_0(const sc_core::sc_module_name& nm) : hbm_0_sc(nm),  HBM_REF_CLK_0("HBM_REF_CLK_0"), AXI_00_ACLK("AXI_00_ACLK"), AXI_00_ARESET_N("AXI_00_ARESET_N"), AXI_00_ARADDR("AXI_00_ARADDR"), AXI_00_ARBURST("AXI_00_ARBURST"), AXI_00_ARID("AXI_00_ARID"), AXI_00_ARLEN("AXI_00_ARLEN"), AXI_00_ARSIZE("AXI_00_ARSIZE"), AXI_00_ARVALID("AXI_00_ARVALID"), AXI_00_AWADDR("AXI_00_AWADDR"), AXI_00_AWBURST("AXI_00_AWBURST"), AXI_00_AWID("AXI_00_AWID"), AXI_00_AWLEN("AXI_00_AWLEN"), AXI_00_AWSIZE("AXI_00_AWSIZE"), AXI_00_AWVALID("AXI_00_AWVALID"), AXI_00_RREADY("AXI_00_RREADY"), AXI_00_BREADY("AXI_00_BREADY"), AXI_00_WDATA("AXI_00_WDATA"), AXI_00_WLAST("AXI_00_WLAST"), AXI_00_WSTRB("AXI_00_WSTRB"), AXI_00_WDATA_PARITY("AXI_00_WDATA_PARITY"), AXI_00_WVALID("AXI_00_WVALID"), APB_0_PWDATA("APB_0_PWDATA"), APB_0_PADDR("APB_0_PADDR"), APB_0_PCLK("APB_0_PCLK"), APB_0_PENABLE("APB_0_PENABLE"), APB_0_PRESET_N("APB_0_PRESET_N"), APB_0_PSEL("APB_0_PSEL"), APB_0_PWRITE("APB_0_PWRITE"), AXI_00_ARREADY("AXI_00_ARREADY"), AXI_00_AWREADY("AXI_00_AWREADY"), AXI_00_RDATA_PARITY("AXI_00_RDATA_PARITY"), AXI_00_RDATA("AXI_00_RDATA"), AXI_00_RID("AXI_00_RID"), AXI_00_RLAST("AXI_00_RLAST"), AXI_00_RRESP("AXI_00_RRESP"), AXI_00_RVALID("AXI_00_RVALID"), AXI_00_WREADY("AXI_00_WREADY"), AXI_00_BID("AXI_00_BID"), AXI_00_BRESP("AXI_00_BRESP"), AXI_00_BVALID("AXI_00_BVALID"), APB_0_PRDATA("APB_0_PRDATA"), APB_0_PREADY("APB_0_PREADY"), APB_0_PSLVERR("APB_0_PSLVERR"), apb_complete_0("apb_complete_0"), DRAM_0_STAT_CATTRIP("DRAM_0_STAT_CATTRIP"), DRAM_0_STAT_TEMP("DRAM_0_STAT_TEMP")
{
  // initialize pins
  mp_impl->HBM_REF_CLK_0(HBM_REF_CLK_0);
  mp_impl->AXI_00_ACLK(AXI_00_ACLK);
  mp_impl->AXI_00_ARESET_N(AXI_00_ARESET_N);
  mp_impl->AXI_00_WDATA_PARITY(AXI_00_WDATA_PARITY);
  mp_impl->APB_0_PWDATA(APB_0_PWDATA);
  mp_impl->APB_0_PADDR(APB_0_PADDR);
  mp_impl->APB_0_PCLK(APB_0_PCLK);
  mp_impl->APB_0_PENABLE(APB_0_PENABLE);
  mp_impl->APB_0_PRESET_N(APB_0_PRESET_N);
  mp_impl->APB_0_PSEL(APB_0_PSEL);
  mp_impl->APB_0_PWRITE(APB_0_PWRITE);
  mp_impl->AXI_00_RDATA_PARITY(AXI_00_RDATA_PARITY);
  mp_impl->APB_0_PRDATA(APB_0_PRDATA);
  mp_impl->APB_0_PREADY(APB_0_PREADY);
  mp_impl->APB_0_PSLVERR(APB_0_PSLVERR);
  mp_impl->apb_complete_0(apb_complete_0);
  mp_impl->DRAM_0_STAT_CATTRIP(DRAM_0_STAT_CATTRIP);
  mp_impl->DRAM_0_STAT_TEMP(DRAM_0_STAT_TEMP);

  // initialize transactors
  mp_SAXI_00_transactor = NULL;
  mp_AXI_00_ARLEN_converter = NULL;
  mp_AXI_00_AWLEN_converter = NULL;

  // Instantiate Socket Stubs

  // configure SAXI_00_transactor
    xsc::common_cpp::properties SAXI_00_transactor_param_props;
    SAXI_00_transactor_param_props.addLong("DATA_WIDTH", "256");
    SAXI_00_transactor_param_props.addLong("FREQ_HZ", "100000000");
    SAXI_00_transactor_param_props.addLong("ID_WIDTH", "6");
    SAXI_00_transactor_param_props.addLong("ADDR_WIDTH", "33");
    SAXI_00_transactor_param_props.addLong("AWUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("ARUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("WUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("RUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("BUSER_WIDTH", "0");
    SAXI_00_transactor_param_props.addLong("HAS_BURST", "1");
    SAXI_00_transactor_param_props.addLong("HAS_LOCK", "0");
    SAXI_00_transactor_param_props.addLong("HAS_PROT", "0");
    SAXI_00_transactor_param_props.addLong("HAS_CACHE", "0");
    SAXI_00_transactor_param_props.addLong("HAS_QOS", "0");
    SAXI_00_transactor_param_props.addLong("HAS_REGION", "0");
    SAXI_00_transactor_param_props.addLong("HAS_WSTRB", "1");
    SAXI_00_transactor_param_props.addLong("HAS_BRESP", "1");
    SAXI_00_transactor_param_props.addLong("HAS_RRESP", "1");
    SAXI_00_transactor_param_props.addLong("SUPPORTS_NARROW_BURST", "1");
    SAXI_00_transactor_param_props.addLong("NUM_READ_OUTSTANDING", "2");
    SAXI_00_transactor_param_props.addLong("NUM_WRITE_OUTSTANDING", "2");
    SAXI_00_transactor_param_props.addLong("MAX_BURST_LENGTH", "16");
    SAXI_00_transactor_param_props.addLong("NUM_READ_THREADS", "1");
    SAXI_00_transactor_param_props.addLong("NUM_WRITE_THREADS", "1");
    SAXI_00_transactor_param_props.addLong("RUSER_BITS_PER_BYTE", "0");
    SAXI_00_transactor_param_props.addLong("WUSER_BITS_PER_BYTE", "0");
    SAXI_00_transactor_param_props.addLong("HAS_SIZE", "1");
    SAXI_00_transactor_param_props.addLong("HAS_RESET", "0");
    SAXI_00_transactor_param_props.addFloat("PHASE", "0.000");
    SAXI_00_transactor_param_props.addString("PROTOCOL", "AXI3");
    SAXI_00_transactor_param_props.addString("READ_WRITE_MODE", "READ_WRITE");
    SAXI_00_transactor_param_props.addString("CLK_DOMAIN", "");

    mp_SAXI_00_transactor = new xtlm::xaximm_pin2xtlm_t<256,33,6,1,1,1,1,1>("SAXI_00_transactor", SAXI_00_transactor_param_props);
  mp_SAXI_00_transactor->ARADDR(AXI_00_ARADDR);
  mp_SAXI_00_transactor->ARBURST(AXI_00_ARBURST);
  mp_SAXI_00_transactor->ARID(AXI_00_ARID);
  mp_AXI_00_ARLEN_converter = new xsc::common::vector2vector_converter<4,8>("AXI_00_ARLEN_converter");
  mp_AXI_00_ARLEN_converter->vector_in(AXI_00_ARLEN);
  mp_AXI_00_ARLEN_converter->vector_out(m_AXI_00_ARLEN_converter_signal);
  mp_SAXI_00_transactor->ARLEN(m_AXI_00_ARLEN_converter_signal);
  mp_SAXI_00_transactor->ARREADY(AXI_00_ARREADY);
  mp_SAXI_00_transactor->ARSIZE(AXI_00_ARSIZE);
  mp_SAXI_00_transactor->ARVALID(AXI_00_ARVALID);
  mp_SAXI_00_transactor->AWADDR(AXI_00_AWADDR);
  mp_SAXI_00_transactor->AWBURST(AXI_00_AWBURST);
  mp_SAXI_00_transactor->AWID(AXI_00_AWID);
  mp_AXI_00_AWLEN_converter = new xsc::common::vector2vector_converter<4,8>("AXI_00_AWLEN_converter");
  mp_AXI_00_AWLEN_converter->vector_in(AXI_00_AWLEN);
  mp_AXI_00_AWLEN_converter->vector_out(m_AXI_00_AWLEN_converter_signal);
  mp_SAXI_00_transactor->AWLEN(m_AXI_00_AWLEN_converter_signal);
  mp_SAXI_00_transactor->AWREADY(AXI_00_AWREADY);
  mp_SAXI_00_transactor->AWSIZE(AXI_00_AWSIZE);
  mp_SAXI_00_transactor->AWVALID(AXI_00_AWVALID);
  mp_SAXI_00_transactor->BID(AXI_00_BID);
  mp_SAXI_00_transactor->BREADY(AXI_00_BREADY);
  mp_SAXI_00_transactor->BRESP(AXI_00_BRESP);
  mp_SAXI_00_transactor->BVALID(AXI_00_BVALID);
  mp_SAXI_00_transactor->RDATA(AXI_00_RDATA);
  mp_SAXI_00_transactor->RID(AXI_00_RID);
  mp_SAXI_00_transactor->RLAST(AXI_00_RLAST);
  mp_SAXI_00_transactor->RREADY(AXI_00_RREADY);
  mp_SAXI_00_transactor->RRESP(AXI_00_RRESP);
  mp_SAXI_00_transactor->RVALID(AXI_00_RVALID);
  mp_SAXI_00_transactor->WDATA(AXI_00_WDATA);
  mp_SAXI_00_transactor->WLAST(AXI_00_WLAST);
  mp_SAXI_00_transactor->WREADY(AXI_00_WREADY);
  mp_SAXI_00_transactor->WSTRB(AXI_00_WSTRB);
  mp_SAXI_00_transactor->WVALID(AXI_00_WVALID);
  mp_SAXI_00_transactor->CLK(AXI_00_ACLK);
  m_SAXI_00_transactor_rst_signal.write(1);
  mp_SAXI_00_transactor->RST(m_SAXI_00_transactor_rst_signal);

  // initialize transactors stubs
  SAXI_00_transactor_target_wr_socket_stub = nullptr;
  SAXI_00_transactor_target_rd_socket_stub = nullptr;

}

void hbm_0::before_end_of_elaboration()
{
  // configure 'SAXI_00' transactor
  if (xsc::utils::xsc_sim_manager::getInstanceParameterInt("hbm_0", "SAXI_00_TLM_MODE") != 1)
  {
    mp_impl->SAXI_00_rd_socket->bind(*(mp_SAXI_00_transactor->rd_socket));
    mp_impl->SAXI_00_wr_socket->bind(*(mp_SAXI_00_transactor->wr_socket));
  
  }
  else
  {
    SAXI_00_transactor_target_wr_socket_stub = new xtlm::xtlm_aximm_target_stub("wr_socket",0);
    SAXI_00_transactor_target_wr_socket_stub->bind(*(mp_SAXI_00_transactor->wr_socket));
    SAXI_00_transactor_target_rd_socket_stub = new xtlm::xtlm_aximm_target_stub("rd_socket",0);
    SAXI_00_transactor_target_rd_socket_stub->bind(*(mp_SAXI_00_transactor->rd_socket));
    mp_SAXI_00_transactor->disable_transactor();
  }

}

#endif // MTI_SYSTEMC




hbm_0::~hbm_0()
{
  delete mp_SAXI_00_transactor;
  delete mp_AXI_00_ARLEN_converter;
  delete mp_AXI_00_AWLEN_converter;

}

#ifdef MTI_SYSTEMC
SC_MODULE_EXPORT(hbm_0);
#endif

#ifdef XM_SYSTEMC
XMSC_MODULE_EXPORT(hbm_0);
#endif

#ifdef RIVIERA
SC_MODULE_EXPORT(hbm_0);
SC_REGISTER_BV(256);
#endif

