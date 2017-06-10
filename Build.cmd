@echo off
setlocal

set TASMPATH=..\Tools\tasm32
set TASMTABS=%TASMPATH%
set PATH=%TASMPATH%;%PATH%

call :asm DIO
call :asm DIO3
call :asm ZETA
call :asm ZETA2
call :asm DIDE
call :asm N8
goto :eof

:asm
TASM -t80 -b -g3 -fFF -dFDPLT=PLT_%1 fd.asm FD_%1.COM FD_%1.LST
goto :eof
