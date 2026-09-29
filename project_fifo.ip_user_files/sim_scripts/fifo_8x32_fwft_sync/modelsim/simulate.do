onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L fifo_generator_v13_2_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.fifo_8x32_fwft_sync xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {fifo_8x32_fwft_sync.udo}

run -all

quit -force
