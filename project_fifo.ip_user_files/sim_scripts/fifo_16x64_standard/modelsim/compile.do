vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../project_fifo.gen/sources_1/ip/fifo_16x64_standard/sim/fifo_16x64_standard.v" \


vlog -work xil_defaultlib \
"glbl.v"

