@echo off
echo.
@color c0
@title RENEW IP
cls
echo ===============================
echo RENEWING IP
echo ===============================
echo.
echo.
cls
echo RENEW IP ?
echo 1 - YES / SIM
echo 2 - NO / NAO
set /p resp=
if "%resp%" == "1" (goto process) else (goto end)
echo.
:process
ipconfig /flushdns
ipconfig /registerdns
ipconfig /setclassid
ipconfig /release
ipconfig /renew
echo.
echo NEW IP !
echo.
pause >nul
exit

:end
echo.
echo PRESS ANY KEY TO EXIT
pause>nul
cls
msg * FALCON
exit
