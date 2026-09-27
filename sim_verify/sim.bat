@echo off
set VB=D:\software\vivado\Vivado\2020.2\bin
call %VB%\xsim.bat %1_snap -R -log sim_%1.log
type sim_%1.log
