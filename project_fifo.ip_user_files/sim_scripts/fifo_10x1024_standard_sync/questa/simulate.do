onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_10x1024_standard_sync_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_10x1024_standard_sync.udo}

run -all

quit -force
