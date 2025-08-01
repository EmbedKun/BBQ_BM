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

#include "hbm_sc.h"

#include <map>
#include <string>

hbm_0_sc::hbm_0_sc(const sc_core::sc_module_name& nm) : sc_core::sc_module(nm), mp_impl(NULL)
{
  // configure connectivity manager
  xsc::utils::xsc_sim_manager::addInstance("hbm_0", this);

  // initialize module
    xsc::common_cpp::properties model_param_props;
    model_param_props.addBool("SAXI_00", "true");
    model_param_props.addBool("SAXI_01", "false");
    model_param_props.addBool("SAXI_02", "false");
    model_param_props.addBool("SAXI_03", "false");
    model_param_props.addBool("SAXI_04", "false");
    model_param_props.addBool("SAXI_05", "false");
    model_param_props.addBool("SAXI_06", "false");
    model_param_props.addBool("SAXI_07", "false");
    model_param_props.addBool("SAXI_08", "false");
    model_param_props.addBool("SAXI_09", "false");
    model_param_props.addBool("SAXI_10", "false");
    model_param_props.addBool("SAXI_11", "false");
    model_param_props.addBool("SAXI_12", "false");
    model_param_props.addBool("SAXI_13", "false");
    model_param_props.addBool("SAXI_14", "false");
    model_param_props.addBool("SAXI_15", "false");
    model_param_props.addBool("SAXI_16", "false");
    model_param_props.addBool("SAXI_17", "false");
    model_param_props.addBool("SAXI_18", "false");
    model_param_props.addBool("SAXI_19", "false");
    model_param_props.addBool("SAXI_20", "false");
    model_param_props.addBool("SAXI_21", "false");
    model_param_props.addBool("SAXI_22", "false");
    model_param_props.addBool("SAXI_23", "false");
    model_param_props.addBool("SAXI_24", "false");
    model_param_props.addBool("SAXI_25", "false");
    model_param_props.addBool("SAXI_26", "false");
    model_param_props.addBool("SAXI_27", "false");
    model_param_props.addBool("SAXI_28", "false");
    model_param_props.addBool("SAXI_29", "false");
    model_param_props.addBool("SAXI_30", "false");
    model_param_props.addBool("SAXI_31", "false");
    model_param_props.addBool("STACK_8HI", "false");
    model_param_props.addLong("HBM_STACK", "1");
    model_param_props.addLong("INIT_SEQ_TIMEOUT", "10000000");
    model_param_props.addLong("AXI_RST_ASSERT_WIDTH", "16");
    model_param_props.addLong("AXI_RST_DEASSERT_WIDTH", "2");
    model_param_props.addLong("TEMP_WAIT_PERIOD_0", "100000");
    model_param_props.addLong("TEMP_WAIT_PERIOD_1", "100000");
    model_param_props.addLong("SWITCH_EN_0", "0");
    model_param_props.addLong("SWITCH_EN_1", "0");
    model_param_props.addLong("HBM_REF_CLK_FREQ_0", "100");
    model_param_props.addLong("HBM_REF_CLK_FREQ_1", "100");
    model_param_props.addLong("HBM_CLK_FREQ_0", "900");
    model_param_props.addLong("HBM_CLK_FREQ_1", "900");
    model_param_props.addLong("HBM_STACK_NUM", "0");
    model_param_props.addLong("DATARATE_STACK_0", "1800");
    model_param_props.addLong("DATARATE_STACK_1", "1800");
    model_param_props.addLong("READ_PERCENT_00", "40");
    model_param_props.addLong("READ_PERCENT_01", "40");
    model_param_props.addLong("READ_PERCENT_02", "40");
    model_param_props.addLong("READ_PERCENT_03", "40");
    model_param_props.addLong("READ_PERCENT_04", "40");
    model_param_props.addLong("READ_PERCENT_05", "40");
    model_param_props.addLong("READ_PERCENT_06", "40");
    model_param_props.addLong("READ_PERCENT_07", "40");
    model_param_props.addLong("READ_PERCENT_08", "40");
    model_param_props.addLong("READ_PERCENT_09", "40");
    model_param_props.addLong("READ_PERCENT_10", "40");
    model_param_props.addLong("READ_PERCENT_11", "40");
    model_param_props.addLong("READ_PERCENT_12", "40");
    model_param_props.addLong("READ_PERCENT_13", "40");
    model_param_props.addLong("READ_PERCENT_14", "40");
    model_param_props.addLong("READ_PERCENT_15", "40");
    model_param_props.addLong("READ_PERCENT_16", "40");
    model_param_props.addLong("READ_PERCENT_17", "40");
    model_param_props.addLong("READ_PERCENT_18", "40");
    model_param_props.addLong("READ_PERCENT_19", "40");
    model_param_props.addLong("READ_PERCENT_20", "40");
    model_param_props.addLong("READ_PERCENT_21", "40");
    model_param_props.addLong("READ_PERCENT_22", "40");
    model_param_props.addLong("READ_PERCENT_23", "40");
    model_param_props.addLong("READ_PERCENT_24", "40");
    model_param_props.addLong("READ_PERCENT_25", "40");
    model_param_props.addLong("READ_PERCENT_26", "40");
    model_param_props.addLong("READ_PERCENT_27", "40");
    model_param_props.addLong("READ_PERCENT_28", "40");
    model_param_props.addLong("READ_PERCENT_29", "40");
    model_param_props.addLong("READ_PERCENT_30", "40");
    model_param_props.addLong("READ_PERCENT_31", "40");
    model_param_props.addLong("WRITE_PERCENT_00", "40");
    model_param_props.addLong("WRITE_PERCENT_01", "40");
    model_param_props.addLong("WRITE_PERCENT_02", "40");
    model_param_props.addLong("WRITE_PERCENT_03", "40");
    model_param_props.addLong("WRITE_PERCENT_04", "40");
    model_param_props.addLong("WRITE_PERCENT_05", "40");
    model_param_props.addLong("WRITE_PERCENT_06", "40");
    model_param_props.addLong("WRITE_PERCENT_07", "40");
    model_param_props.addLong("WRITE_PERCENT_08", "40");
    model_param_props.addLong("WRITE_PERCENT_09", "40");
    model_param_props.addLong("WRITE_PERCENT_10", "40");
    model_param_props.addLong("WRITE_PERCENT_11", "40");
    model_param_props.addLong("WRITE_PERCENT_12", "40");
    model_param_props.addLong("WRITE_PERCENT_13", "40");
    model_param_props.addLong("WRITE_PERCENT_14", "40");
    model_param_props.addLong("WRITE_PERCENT_15", "40");
    model_param_props.addLong("WRITE_PERCENT_16", "40");
    model_param_props.addLong("WRITE_PERCENT_17", "40");
    model_param_props.addLong("WRITE_PERCENT_18", "40");
    model_param_props.addLong("WRITE_PERCENT_19", "40");
    model_param_props.addLong("WRITE_PERCENT_20", "40");
    model_param_props.addLong("WRITE_PERCENT_21", "40");
    model_param_props.addLong("WRITE_PERCENT_22", "40");
    model_param_props.addLong("WRITE_PERCENT_23", "40");
    model_param_props.addLong("WRITE_PERCENT_24", "40");
    model_param_props.addLong("WRITE_PERCENT_25", "40");
    model_param_props.addLong("WRITE_PERCENT_26", "40");
    model_param_props.addLong("WRITE_PERCENT_27", "40");
    model_param_props.addLong("WRITE_PERCENT_28", "40");
    model_param_props.addLong("WRITE_PERCENT_29", "40");
    model_param_props.addLong("WRITE_PERCENT_30", "40");
    model_param_props.addLong("WRITE_PERCENT_31", "40");
    model_param_props.addLong("PAGEHIT_PERCENT_00", "75");
    model_param_props.addLong("PAGEHIT_PERCENT_01", "75");
    model_param_props.addFloat("AXI_CLK_FREQ", "450");
    model_param_props.addFloat("AXI_CLK1_FREQ", "450");
    model_param_props.addString("SWITCH_ENABLE_00", "FALSE");
    model_param_props.addString("SWITCH_ENABLE_01", "FALSE");
    model_param_props.addString("INIT_BYPASS", "FALSE");
    model_param_props.addString("CLK_SEL_00", "TRUE");
    model_param_props.addString("CLK_SEL_01", "FALSE");
    model_param_props.addString("CLK_SEL_02", "FALSE");
    model_param_props.addString("CLK_SEL_03", "FALSE");
    model_param_props.addString("CLK_SEL_04", "FALSE");
    model_param_props.addString("CLK_SEL_05", "FALSE");
    model_param_props.addString("CLK_SEL_06", "FALSE");
    model_param_props.addString("CLK_SEL_07", "FALSE");
    model_param_props.addString("CLK_SEL_08", "FALSE");
    model_param_props.addString("CLK_SEL_09", "FALSE");
    model_param_props.addString("CLK_SEL_10", "FALSE");
    model_param_props.addString("CLK_SEL_11", "FALSE");
    model_param_props.addString("CLK_SEL_12", "FALSE");
    model_param_props.addString("CLK_SEL_13", "FALSE");
    model_param_props.addString("CLK_SEL_14", "FALSE");
    model_param_props.addString("CLK_SEL_15", "FALSE");
    model_param_props.addString("CLK_SEL_16", "FALSE");
    model_param_props.addString("CLK_SEL_17", "FALSE");
    model_param_props.addString("CLK_SEL_18", "FALSE");
    model_param_props.addString("CLK_SEL_19", "FALSE");
    model_param_props.addString("CLK_SEL_20", "FALSE");
    model_param_props.addString("CLK_SEL_21", "FALSE");
    model_param_props.addString("CLK_SEL_22", "FALSE");
    model_param_props.addString("CLK_SEL_23", "FALSE");
    model_param_props.addString("CLK_SEL_24", "FALSE");
    model_param_props.addString("CLK_SEL_25", "FALSE");
    model_param_props.addString("CLK_SEL_26", "FALSE");
    model_param_props.addString("CLK_SEL_27", "FALSE");
    model_param_props.addString("CLK_SEL_28", "FALSE");
    model_param_props.addString("CLK_SEL_29", "FALSE");
    model_param_props.addString("CLK_SEL_30", "FALSE");
    model_param_props.addString("CLK_SEL_31", "FALSE");
    model_param_props.addString("MC_ENABLE_00", "TRUE");
    model_param_props.addString("MC_ENABLE_01", "FALSE");
    model_param_props.addString("MC_ENABLE_02", "FALSE");
    model_param_props.addString("MC_ENABLE_03", "FALSE");
    model_param_props.addString("MC_ENABLE_04", "FALSE");
    model_param_props.addString("MC_ENABLE_05", "FALSE");
    model_param_props.addString("MC_ENABLE_06", "FALSE");
    model_param_props.addString("MC_ENABLE_07", "FALSE");
    model_param_props.addString("MC_ENABLE_08", "FALSE");
    model_param_props.addString("MC_ENABLE_09", "FALSE");
    model_param_props.addString("MC_ENABLE_10", "FALSE");
    model_param_props.addString("MC_ENABLE_11", "FALSE");
    model_param_props.addString("MC_ENABLE_12", "FALSE");
    model_param_props.addString("MC_ENABLE_13", "FALSE");
    model_param_props.addString("MC_ENABLE_14", "FALSE");
    model_param_props.addString("MC_ENABLE_15", "FALSE");
    model_param_props.addString("MC_ENABLE_APB_00", "TRUE");
    model_param_props.addString("MC_ENABLE_APB_01", "FALSE");
    model_param_props.addString("PHY_ENABLE_00", "TRUE");
    model_param_props.addString("PHY_ENABLE_01", "TRUE");
    model_param_props.addString("PHY_ENABLE_02", "FALSE");
    model_param_props.addString("PHY_ENABLE_03", "FALSE");
    model_param_props.addString("PHY_ENABLE_04", "FALSE");
    model_param_props.addString("PHY_ENABLE_05", "FALSE");
    model_param_props.addString("PHY_ENABLE_06", "FALSE");
    model_param_props.addString("PHY_ENABLE_07", "FALSE");
    model_param_props.addString("PHY_ENABLE_08", "TRUE");
    model_param_props.addString("PHY_ENABLE_09", "FALSE");
    model_param_props.addString("PHY_ENABLE_10", "FALSE");
    model_param_props.addString("PHY_ENABLE_11", "FALSE");
    model_param_props.addString("PHY_ENABLE_12", "FALSE");
    model_param_props.addString("PHY_ENABLE_13", "FALSE");
    model_param_props.addString("PHY_ENABLE_14", "FALSE");
    model_param_props.addString("PHY_ENABLE_15", "FALSE");
    model_param_props.addString("PHY_ENABLE_16", "FALSE");
    model_param_props.addString("PHY_ENABLE_17", "FALSE");
    model_param_props.addString("PHY_ENABLE_18", "FALSE");
    model_param_props.addString("PHY_ENABLE_19", "FALSE");
    model_param_props.addString("PHY_ENABLE_20", "FALSE");
    model_param_props.addString("PHY_ENABLE_21", "FALSE");
    model_param_props.addString("PHY_ENABLE_22", "FALSE");
    model_param_props.addString("PHY_ENABLE_23", "FALSE");
    model_param_props.addString("PHY_ENABLE_24", "FALSE");
    model_param_props.addString("PHY_ENABLE_25", "FALSE");
    model_param_props.addString("PHY_ENABLE_26", "FALSE");
    model_param_props.addString("PHY_ENABLE_27", "FALSE");
    model_param_props.addString("PHY_ENABLE_28", "FALSE");
    model_param_props.addString("PHY_ENABLE_29", "FALSE");
    model_param_props.addString("PHY_ENABLE_30", "FALSE");
    model_param_props.addString("PHY_ENABLE_31", "FALSE");
    model_param_props.addString("PHY_ENABLE_APB_00", "TRUE");
    model_param_props.addString("PHY_ENABLE_APB_01", "FALSE");
    model_param_props.addString("USER_MC0_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC1_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC2_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC3_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC4_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC5_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC6_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC7_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC8_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC9_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC10_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC11_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC12_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC13_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC14_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");
    model_param_props.addString("USER_MC15_ADDR_BIT", "NA,RA13,RA12,RA11,RA10,RA9,RA8,RA7,RA6,RA5,RA4,RA3,RA2,RA1,RA0,BG1,BA1,BA0,CA5,CA4,CA3,CA2,CA1,BG0");

  mp_impl = new hbm_sc("inst", model_param_props);

  // initialize AXI sockets
  SAXI_00_rd_socket = mp_impl->SAXI_00_rd_socket;
  SAXI_00_wr_socket = mp_impl->SAXI_00_wr_socket;
}

hbm_0_sc::~hbm_0_sc()
{
  xsc::utils::xsc_sim_manager::clean();

  delete mp_impl;
}

