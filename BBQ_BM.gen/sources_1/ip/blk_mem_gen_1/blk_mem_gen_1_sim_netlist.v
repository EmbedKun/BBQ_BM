// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Jul 16 15:49:49 2025
// Host        : FNIL-PNIC-1 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_1 -prefix
//               blk_mem_gen_1_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
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
  blk_mem_gen_1_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29792)
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
