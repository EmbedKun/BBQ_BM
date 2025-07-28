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

// IP VLNV: xilinx.com:ip:hbm:1.0
// IP Revision: 9

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
hbm_0 your_instance_name (
  .HBM_REF_CLK_0(HBM_REF_CLK_0),              // input wire HBM_REF_CLK_0
  .AXI_00_ACLK(AXI_00_ACLK),                  // input wire AXI_00_ACLK
  .AXI_00_ARESET_N(AXI_00_ARESET_N),          // input wire AXI_00_ARESET_N
  .AXI_00_ARADDR(AXI_00_ARADDR),              // input wire [32 : 0] AXI_00_ARADDR
  .AXI_00_ARBURST(AXI_00_ARBURST),            // input wire [1 : 0] AXI_00_ARBURST
  .AXI_00_ARID(AXI_00_ARID),                  // input wire [5 : 0] AXI_00_ARID
  .AXI_00_ARLEN(AXI_00_ARLEN),                // input wire [3 : 0] AXI_00_ARLEN
  .AXI_00_ARSIZE(AXI_00_ARSIZE),              // input wire [2 : 0] AXI_00_ARSIZE
  .AXI_00_ARVALID(AXI_00_ARVALID),            // input wire AXI_00_ARVALID
  .AXI_00_AWADDR(AXI_00_AWADDR),              // input wire [32 : 0] AXI_00_AWADDR
  .AXI_00_AWBURST(AXI_00_AWBURST),            // input wire [1 : 0] AXI_00_AWBURST
  .AXI_00_AWID(AXI_00_AWID),                  // input wire [5 : 0] AXI_00_AWID
  .AXI_00_AWLEN(AXI_00_AWLEN),                // input wire [3 : 0] AXI_00_AWLEN
  .AXI_00_AWSIZE(AXI_00_AWSIZE),              // input wire [2 : 0] AXI_00_AWSIZE
  .AXI_00_AWVALID(AXI_00_AWVALID),            // input wire AXI_00_AWVALID
  .AXI_00_RREADY(AXI_00_RREADY),              // input wire AXI_00_RREADY
  .AXI_00_BREADY(AXI_00_BREADY),              // input wire AXI_00_BREADY
  .AXI_00_WDATA(AXI_00_WDATA),                // input wire [255 : 0] AXI_00_WDATA
  .AXI_00_WLAST(AXI_00_WLAST),                // input wire AXI_00_WLAST
  .AXI_00_WSTRB(AXI_00_WSTRB),                // input wire [31 : 0] AXI_00_WSTRB
  .AXI_00_WDATA_PARITY(AXI_00_WDATA_PARITY),  // input wire [31 : 0] AXI_00_WDATA_PARITY
  .AXI_00_WVALID(AXI_00_WVALID),              // input wire AXI_00_WVALID
  .APB_0_PWDATA(APB_0_PWDATA),                // input wire [31 : 0] APB_0_PWDATA
  .APB_0_PADDR(APB_0_PADDR),                  // input wire [21 : 0] APB_0_PADDR
  .APB_0_PCLK(APB_0_PCLK),                    // input wire APB_0_PCLK
  .APB_0_PENABLE(APB_0_PENABLE),              // input wire APB_0_PENABLE
  .APB_0_PRESET_N(APB_0_PRESET_N),            // input wire APB_0_PRESET_N
  .APB_0_PSEL(APB_0_PSEL),                    // input wire APB_0_PSEL
  .APB_0_PWRITE(APB_0_PWRITE),                // input wire APB_0_PWRITE
  .AXI_00_ARREADY(AXI_00_ARREADY),            // output wire AXI_00_ARREADY
  .AXI_00_AWREADY(AXI_00_AWREADY),            // output wire AXI_00_AWREADY
  .AXI_00_RDATA_PARITY(AXI_00_RDATA_PARITY),  // output wire [31 : 0] AXI_00_RDATA_PARITY
  .AXI_00_RDATA(AXI_00_RDATA),                // output wire [255 : 0] AXI_00_RDATA
  .AXI_00_RID(AXI_00_RID),                    // output wire [5 : 0] AXI_00_RID
  .AXI_00_RLAST(AXI_00_RLAST),                // output wire AXI_00_RLAST
  .AXI_00_RRESP(AXI_00_RRESP),                // output wire [1 : 0] AXI_00_RRESP
  .AXI_00_RVALID(AXI_00_RVALID),              // output wire AXI_00_RVALID
  .AXI_00_WREADY(AXI_00_WREADY),              // output wire AXI_00_WREADY
  .AXI_00_BID(AXI_00_BID),                    // output wire [5 : 0] AXI_00_BID
  .AXI_00_BRESP(AXI_00_BRESP),                // output wire [1 : 0] AXI_00_BRESP
  .AXI_00_BVALID(AXI_00_BVALID),              // output wire AXI_00_BVALID
  .APB_0_PRDATA(APB_0_PRDATA),                // output wire [31 : 0] APB_0_PRDATA
  .APB_0_PREADY(APB_0_PREADY),                // output wire APB_0_PREADY
  .APB_0_PSLVERR(APB_0_PSLVERR),              // output wire APB_0_PSLVERR
  .apb_complete_0(apb_complete_0),            // output wire apb_complete_0
  .DRAM_0_STAT_CATTRIP(DRAM_0_STAT_CATTRIP),  // output wire DRAM_0_STAT_CATTRIP
  .DRAM_0_STAT_TEMP(DRAM_0_STAT_TEMP)        // output wire [6 : 0] DRAM_0_STAT_TEMP
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file hbm_0.v when simulating
// the core, hbm_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

