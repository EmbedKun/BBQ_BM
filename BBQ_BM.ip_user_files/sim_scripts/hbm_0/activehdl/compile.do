vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/hbm_v1_0_9

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap hbm_v1_0_9 activehdl/hbm_v1_0_9

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb" "+incdir+../../../../BBQ_BM.gen/sources_1/ip/hbm_0/hdl/rtl" "+incdir+../../../ipstatic/verif/model" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb" "+incdir+../../../../BBQ_BM.gen/sources_1/ip/hbm_0/hdl/rtl" "+incdir+../../../ipstatic/verif/model" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb/xsdb_top.v" \
"../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb/xsdb2apb.v" \
"../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb/hbm_v1_0_chipscope_xsdb_slave.sv" \
"../../../../BBQ_BM.gen/sources_1/ip/hbm_0/hdl/rtl/hbm_v1_0_9.sv" \

vlog -work hbm_v1_0_9  -sv2k12 "+incdir+../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb" "+incdir+../../../../BBQ_BM.gen/sources_1/ip/hbm_0/hdl/rtl" "+incdir+../../../ipstatic/verif/model" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../ipstatic/hdl/hbm_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb" "+incdir+../../../../BBQ_BM.gen/sources_1/ip/hbm_0/hdl/rtl" "+incdir+../../../ipstatic/verif/model" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../BBQ_BM.gen/sources_1/ip/hbm_0/verif/model/hbm_model.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb" "+incdir+../../../../BBQ_BM.gen/sources_1/ip/hbm_0/hdl/rtl" "+incdir+../../../ipstatic/verif/model" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../BBQ_BM.gen/sources_1/ip/hbm_0/sim/hbm_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

