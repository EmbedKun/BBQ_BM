// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Jul 25 13:54:22 2025
// Host        : FNIL-PNIC-1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dbg_hub_stub.v
// Design      : dbg_hub
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xsdbm_v3_0_0_xsdbm,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sl_iport0_o, sl_iport1_o, sl_iport2_o, 
  sl_oport0_i, sl_oport1_i, sl_oport2_i, clk)
/* synthesis syn_black_box black_box_pad_pin="sl_iport0_o[36:0],sl_iport1_o[36:0],sl_iport2_o[36:0],sl_oport0_i[16:0],sl_oport1_i[16:0],sl_oport2_i[16:0],clk" */;
  output [36:0]sl_iport0_o;
  output [36:0]sl_iport1_o;
  output [36:0]sl_iport2_o;
  input [16:0]sl_oport0_i;
  input [16:0]sl_oport1_i;
  input [16:0]sl_oport2_i;
  input clk;
endmodule
