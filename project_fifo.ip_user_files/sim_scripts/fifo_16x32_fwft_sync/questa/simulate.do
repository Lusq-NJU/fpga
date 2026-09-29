onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_16x32_fwft_sync_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_16x32_fwft_sync.udo}

run -all

quit -force
