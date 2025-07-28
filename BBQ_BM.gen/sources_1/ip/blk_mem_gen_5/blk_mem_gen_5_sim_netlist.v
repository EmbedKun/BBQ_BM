// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Jul 28 21:14:44 2025
// Host        : gabber running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/gabber/FUDAN/workspace/SBM_0728/BBQ_BM/BBQ_BM.gen/sources_1/ip/blk_mem_gen_5/blk_mem_gen_5_sim_netlist.v
// Design      : blk_mem_gen_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_5,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_5
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [33:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [33:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [33:0]dina;
  wire [33:0]doutb;
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
  wire [33:0]NLW_U0_douta_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [33:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.017609 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_5.mem" *) 
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
  (* C_READ_WIDTH_A = "34" *) 
  (* C_READ_WIDTH_B = "34" *) 
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
  (* C_WRITE_WIDTH_A = "34" *) 
  (* C_WRITE_WIDTH_B = "34" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_5_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[33:0]),
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[33:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30080)
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
