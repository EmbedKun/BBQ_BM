// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Jul 28 21:14:43 2025
// Host        : gabber running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_6_sim_netlist.v
// Design      : blk_mem_gen_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_6,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20864)
`pragma protect data_block
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
KFU=
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
