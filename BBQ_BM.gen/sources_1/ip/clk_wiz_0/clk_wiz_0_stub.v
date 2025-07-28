// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Jul 28 09:11:42 2025
// Host        : gabber running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/gabber/FUDAN/workspace/SBM_0728/BBQ_BM/BBQ_BM.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(bbq_clk, hbm_ref, axi_clk, apb_clk, resetn, locked, 
  clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="bbq_clk,hbm_ref,axi_clk,apb_clk,resetn,locked,clk_in1_p,clk_in1_n" */;
  output bbq_clk;
  output hbm_ref;
  output axi_clk;
  output apb_clk;
  input resetn;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
