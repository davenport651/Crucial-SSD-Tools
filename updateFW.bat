@echo off
setlocal enableDelayedExpansion

set fwbin=c:\Users\Administrator\fwbin\

:MENU
cls
echo.
echo This utility will update the given FW on the drive of your choice.
echo.
echo The following updates are available:
echo.
echo -Micron [5]100 SSD
echo -Micron [1]100 SSD
echo -Micron m[6]00 SSD
echo -Crucial MX[3]00 SSD
echo.

choice /C 5136 /M "Please select:"
goto option-%errorlevel%

:option-1 UPDATE5100
echo.
echo.
echo The following drives are detected by Storage Executive:
msecli -L
echo.
set "driveno="
set /p driveno=Which Micron 5100 would you like to update? (Drive Number) 
msecli -F -U "!fwbin!m5100.bin" -n "Drive!driveno!"
echo.
choice /C MCQ /M "Return to [M]enu, [C]ontinue or [Q]uit?"
if errorlevel 3 EXIT
if errorlevel 2 goto option-1
if errorlevel 1 goto MENU

:option-2
echo.
echo.
echo The following drives are detected by Storage Executive:
msecli -L
echo.

echo.
set "driveno="
set /p driveno=Which Micron 1100 would you like to update? (Drive Number) 
msecli -F -U "!fwbin!m1100.bin" -n "Drive!driveno!"
echo.

choice /C MCQ /M "Return to [M]enu, [C]ontinue or [Q]uit?"
if errorlevel 3 EXIT
if errorlevel 2 goto option-2
if errorlevel 1 goto MENU

:option-3
echo.
echo.
echo The following drives are detected by Storage Executive:
msecli -L
echo.

set "driveno="
set /p driveno=Which MX300 would you like to update? (Drive Number) 
msecli -F -U "!fwbin!mx300.bin" -n "Drive!driveno!"
echo.
choice /C MCQ /M "Return to [M]enu, [C]ontinue or [Q]uit?"
if errorlevel 3 EXIT
if errorlevel 2 goto option-3
if errorlevel 1 goto MENU

:option-4
echo.
echo.
echo The following drives are detected by Storage Executive:
msecli -L
echo.

set "driveno="
set /p driveno=Which M600 would you like to update? (Drive Number) 
msecli -F -U "!fwbin!m600.bin" -n "Drive!driveno!"

echo.
choice /C MCQ /M "Return to [M]enu, [C]ontine or [Q]uit?" 
if errorlevel 3 EXIT
if errorlevel 2 goto option-4
if errorlevel 1 goto MENU
