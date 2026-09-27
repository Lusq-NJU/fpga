@echo off
set VB=D:\software\vivado\Vivado\2020.2\bin
:loop
if "%~1"=="" goto end
echo ================ %1 ================
call %VB%\xvlog.bat --incr --relax -work xil_defaultlib %1.v -log xvlog_chk.log
call %VB%\xelab.bat -L xil_defaultlib -L fifo_generator_v13_2_5 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot %1_snap xil_defaultlib.%1 xil_defaultlib.glbl -log elab_%1.log
if errorlevel 1 echo ELAB FAILED for %1 & shift & goto loop
call %VB%\xsim.bat %1_snap -R -log sim_%1.log
shift
goto loop
:end
