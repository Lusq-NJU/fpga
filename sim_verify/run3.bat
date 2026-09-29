@echo off
rem Usage: run3.bat <snapshot/bench name> <extra .v files to compile with it>
rem Compiles the fifo_3_x IPs (extra3.prj) plus the named files, elaborates and runs.
set VB=D:\software\vivado\Vivado\2020.2\bin
call %VB%\xvlog.bat --incr --relax -prj extra3.prj -log xvlog_extra3.log
if errorlevel 1 echo XVLOG IP FAILED & goto :eof
call %VB%\xvlog.bat --incr --relax -work xil_defaultlib %2 %3 %4 %5 %6 -log xvlog_chk.log
if errorlevel 1 echo XVLOG DUT FAILED & goto :eof
call %VB%\xelab.bat -L xil_defaultlib -L fifo_generator_v13_2_5 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot %1_snap xil_defaultlib.%1 xil_defaultlib.glbl -log elab_%1.log
if errorlevel 1 echo ELAB FAILED for %1 & goto :eof
call %VB%\xsim.bat %1_snap -R -log sim_%1.log
type sim_%1.log
