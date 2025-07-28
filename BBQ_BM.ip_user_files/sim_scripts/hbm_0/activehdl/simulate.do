onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+hbm_0 -L xilinx_vip -L xpm -L xil_defaultlib -L hbm_v1_0_9 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.hbm_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {hbm_0.udo}

run -all

endsim

quit -force
