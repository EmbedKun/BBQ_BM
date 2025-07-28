onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib hbm_0_opt

do {wave.do}

view wave
view structure
view signals

do {hbm_0.udo}

run -all

quit -force
