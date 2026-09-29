@echo off
rem Usage: (run from a mut42x directory) runmut42.bat <bench module> <bench file>
rem Compiles ..\extra42.prj IPs, this directory's fifo_4_2.v (a mutant) and ..\<bench file>,
rem elaborates and runs.  Purpose: prove the checker in ..\ can fail.
set VB=D:\software\vivado\Vivado\2020.2\bin
call %VB%\xvlog.bat --relax -prj D:\coding\verilog\xc7k70t\project_fifo\sim_verify\extra42.prj -log xvlog_ip.log
if errorlevel 1 echo IP COMPILE FAILED & goto :eof
call %VB%\xvlog.bat --relax -work xil_defaultlib ..\glbl.v fifo_4_2.v -log xvlog_mut.log
if errorlevel 1 echo MUT COMPILE FAILED & goto :eof
call %VB%\xvlog.bat --relax -work xil_defaultlib ..\%2 -log xvlog_chk.log
if errorlevel 1 echo BENCH COMPILE FAILED & goto :eof
call %VB%\xelab.bat -L xil_defaultlib -L fifo_generator_v13_2_5 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot %1_snap xil_defaultlib.%1 xil_defaultlib.glbl -log elab_%1.log
if errorlevel 1 echo ELAB FAILED for %1 & goto :eof
call %VB%\xsim.bat %1_snap -R -log sim_%1.log
type sim_%1.log
