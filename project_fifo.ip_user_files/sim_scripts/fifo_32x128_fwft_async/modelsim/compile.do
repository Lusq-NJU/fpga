vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../project_fifo.gen/sources_1/ip/fifo_32x128_fwft_async/sim/fifo_32x128_fwft_async.v" \


vlog -work xil_defaultlib \
"glbl.v"

