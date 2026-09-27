onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_32x128_fwft_async_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_32x128_fwft_async.udo}

run -all

quit -force
