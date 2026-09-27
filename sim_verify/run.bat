@echo off
set VIVADO_BIN=D:\software\vivado\Vivado\2020.2\bin
call %VIVADO_BIN%\xvlog.bat --incr --relax -prj all.prj -log xvlog.log
