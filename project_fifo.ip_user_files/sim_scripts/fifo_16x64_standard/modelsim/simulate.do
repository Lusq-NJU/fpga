onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L fifo_generator_v13_2_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.fifo_16x64_standard xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {fifo_16x64_standard.udo}

run -all

quit -force
