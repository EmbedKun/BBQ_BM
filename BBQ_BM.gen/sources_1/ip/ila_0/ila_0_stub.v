// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Aug 27 13:18:42 2025
// Host        : gabber running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/gabber/FUDAN/workspace/0803_SBM/new/BBQ_BM/BBQ_BM.gen/sources_1/ip/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.2" *)
module ila_0(clk, probe0, probe1, probe2, probe3, probe4, probe5)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[2:0],probe2[16:0],probe3[9:0],probe4[0:0],probe5[63:0]" */;
  input clk;
  input [0:0]probe0;
  input [2:0]probe1;
  input [16:0]probe2;
  input [9:0]probe3;
  input [0:0]probe4;
  input [63:0]probe5;
endmodule
