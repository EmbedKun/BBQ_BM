-makelib xcelium_lib/xilinx_vip -sv \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb/xsdb_top.v" \
  "../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb/xsdb2apb.v" \
  "../../../../BBQ_BM.gen/sources_1/ip/hbm_0/xsdb/hbm_v1_0_chipscope_xsdb_slave.sv" \
  "../../../../BBQ_BM.gen/sources_1/ip/hbm_0/hdl/rtl/hbm_v1_0_9.sv" \
-endlib
-makelib xcelium_lib/hbm_v1_0_9 -sv \
  "../../../ipstatic/hdl/hbm_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../../BBQ_BM.gen/sources_1/ip/hbm_0/verif/model/hbm_model.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BBQ_BM.gen/sources_1/ip/hbm_0/sim/hbm_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

