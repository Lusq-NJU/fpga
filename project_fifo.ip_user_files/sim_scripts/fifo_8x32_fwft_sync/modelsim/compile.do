vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../project_fifo.gen/sources_1/ip/fifo_8x32_fwft_sync/sim/fifo_8x32_fwft_sync.v" \


vlog -work xil_defaultlib \
"glbl.v"

