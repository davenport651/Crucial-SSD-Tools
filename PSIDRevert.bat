@echo off
echo. >> c:\reverted.log
date /T >> c:\reverted.log

:PSID
cls
echo This utility will perform a PSID Revert on Crucial and Micron SSDs.
echo.
set /p psidkey=Enter the PSID Key: 
echo.

msecli.exe -X -P -p "%psidkey%" -n Drive1
msecli -L -a | findstr Serial >> c:\reverted.log
echo. >> c:\reverted.log

echo.
echo Ctrl-C to quit; any key to continue...
pause >nul

GOTO PSID
