onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_16x64_standard_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_16x64_standard.udo}

run -all

quit -force
