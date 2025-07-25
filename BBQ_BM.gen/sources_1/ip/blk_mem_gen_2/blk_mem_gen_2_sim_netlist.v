// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jul 16 15:54:50 2025
// Host        : FNIL-PNIC-1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/pnic/mkxue/Clone/BBQ/hardware/bbq-xilinx/hardware/hardware.gen/sources_1/ip/blk_mem_gen_2/blk_mem_gen_2_sim_netlist.v
// Design      : blk_mem_gen_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_2,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_2
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [17:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [17:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [17:0]dina;
  wire [17:0]doutb;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [17:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [17:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.233564 mW" *) 
  (* C_FAMILY = "virtexuplusHBM" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_2.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "18" *) 
  (* C_READ_WIDTH_B = "18" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "18" *) 
  (* C_WRITE_WIDTH_B = "18" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_2_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[17:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[17:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20848)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
