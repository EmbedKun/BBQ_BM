// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Jul 28 21:14:44 2025
// Host        : gabber running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/gabber/FUDAN/workspace/SBM_0728/BBQ_BM/BBQ_BM.gen/sources_1/ip/blk_mem_gen_6/blk_mem_gen_6_sim_netlist.v
// Design      : blk_mem_gen_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_6,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_6
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
  (* C_INIT_FILE = "blk_mem_gen_6.mem" *) 
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
  blk_mem_gen_6_blk_mem_gen_v8_4_4 U0
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
