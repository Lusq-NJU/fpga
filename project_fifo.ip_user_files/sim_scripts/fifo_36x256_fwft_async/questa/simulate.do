onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_36x256_fwft_async_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_36x256_fwft_async.udo}

run -all

quit -force
