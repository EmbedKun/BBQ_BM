// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Jul 28 21:14:43 2025
// Host        : gabber running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_5_sim_netlist.v
// Design      : blk_mem_gen_5
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_5,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30112)
`pragma protect data_block
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
yLI+mdWmkLIuCQmUsZbaDQ==
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
