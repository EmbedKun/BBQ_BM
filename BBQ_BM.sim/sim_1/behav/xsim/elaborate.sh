#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Wed Jul 16 16:37:55 CST 2025
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 445a34cfabd24911bf3c5c1bb1f41b89 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L fifo_generator_v13_2_5 -L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_bbq_behav xil_defaultlib.tb_bbq xil_defaultlib.glbl -log elaborate.log"
xelab -wto 445a34cfabd24911bf3c5c1bb1f41b89 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L blk_mem_gen_v8_4_4 -L fifo_generator_v13_2_5 -L uvm -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_bbq_behav xil_defaultlib.tb_bbq xil_defaultlib.glbl -log elaborate.log

