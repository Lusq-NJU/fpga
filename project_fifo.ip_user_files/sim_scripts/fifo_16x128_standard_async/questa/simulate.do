onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_16x128_standard_async_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_16x128_standard_async.udo}

run -all

quit -force
