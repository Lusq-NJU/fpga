onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+fifo_19x256_fwft_async -L xpm -L fifo_generator_v13_2_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_19x256_fwft_async xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {fifo_19x256_fwft_async.udo}

run -all

endsim

quit -force
