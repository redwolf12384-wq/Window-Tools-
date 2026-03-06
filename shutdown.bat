:INI
@ECHO Off
title SHUTDOWN - DESLIGAMENTO AUTOMATICO
cls
color c0
echo.
echo.             S H U T D O W N
echo.  ____________________________________________________________________________
echo. /___/___/___/___/___/___/___/___/___/___/___/___/___/___/___/___/___/___/___/
echo.
echo.             1 - AGENDAR PARA DESLIGAR EM 15 MINUTOS
echo.             2 - AGENDAR PARA DESLIGAR EM 30 MINUTOS
echo.             3 - AGENDAR PARA DESLIGAR EM 45 MINUTOS
echo.             4 - AGENDAR PARA DESLIGAR EM 1 HORA
echo.             5 - AGENDAR PARA DESLIGAR EM 1 HORA E MEIA
echo.             6 - AGENDAR PARA DESLIGAR EM 2 HORAS
echo.             7 - AGENDAR PARA DESLIGAR EM 10 HORAS
echo.             8 - CANCELAR TODOS OS AGENDAMENTOS
echo.             9 - SAIR
echo.

:aff
set /p option=DIGITE A OPCAO DESEJADA: 
echo.
if %option% equ 1 goto shutdown15
if %option% equ 2 goto shutdown30
if %option% equ 3 goto shutdown45
if %option% equ 4 goto shutdown60
if %option% equ 5 goto shutdown90
if %option% equ 6 goto shutdown120
if %option% equ 7 goto shutdown600
if %option% equ 8 goto cancel
if %option% equ 9 goto sair
echo.

:shutdown15
echo.
echo.      SEU COMPUTADOR SERA DESLIGADO EM 15 MINUTOS
echo.     *********************************************
echo.                   DESEJA CONTINUAR?
echo.
pause
goto shutdown15cmd

:shutdown30
echo.
echo.      SEU COMPUTADOR SERA DESLIGADO EM 30 MINUTOS
echo.     *********************************************
echo.                   DESEJA CONTINUAR?
echo.
pause
goto shutdown30cmd

:shutdown45
echo.
echo.      SEU COMPUTADOR SERA DESLIGADO EM 45 MINUTOS
echo.     *********************************************
echo.                   DESEJA CONTINUAR?
echo.
pause
goto shutdown45cmd

:shutdown60
echo.
echo.      SEU COMPUTADOR SERA DESLIGADO EM 1 HORA
echo.     *****************************************
echo.                DESEJA CONTINUAR?
echo.
pause
goto shutdown60cmd

:shutdown90
echo.
echo.      SEU COMPUTADOR SERA DESLIGADO EM 1 HORA E MEIA
echo.     ************************************************
echo.                     DESEJA CONTINUAR?
echo.
pause
goto shutdown90cmd

:shutdown120
echo.
echo.      SEU COMPUTADOR SERA DESLIGADO EM 2 HORAS
echo.     ******************************************
echo.                  DESEJA CONTINUAR?
echo.
pause
goto shutdown120cmd

:shutdown600
echo.
echo.      SEU COMPUTADOR SERA DESLIGADO EM 10 HORAS (sleep mode)
echo.     ********************************************************
echo.                         DESEJA CONTINUAR?
echo.
pause
goto shutdown600cmd

:exit
echo.
echo.      SEU COMPUTADOR SERA DESLIGADO EM 15 MINUTOS
echo.     *********************************************
echo.                   DESEJA CONTINUAR?
echo.
pause
goto exitcmd

:shutdown15cmd
shutdown -a
shutdown -t 900 -s -f -c "O SEU PC SERA DESLIGADO EM 15 MINUTOS."
goto activated

:shutdown30cmd
shutdown -a
shutdown -t 1800 -s -f -c "O SEU PC SERA DESLIGADO EM 30 MINUTOS."
goto activated

:shutdown45cmd
shutdown -a
shutdown -t 2700 -s -f -c "O SEU PC SERA DESLIGADO EM 45 MINUTOS."
goto activated

:shutdown60cmd
shutdown -a
shutdown -t 3600 -s -f -c "O SEU PC SERA DESLIGADO EM 1 HORA."
goto activated

:shutdown90cmd
shutdown -a
shutdown -t 5400 -s -f -c "O SEU PC SERA DESLIGADO EM 1 HORA E MEIA."
goto activated

:shutdown120cmd
shutdown -a
shutdown -t 7200 -s -f -c "O SEU PC SERA DESLIGADO EM 2 HORAS."
goto activated

:shutdown600cmd
shutdown -a
shutdown -t 36000 -s -f -c "O SEU PC SERA DESLIGADO EM 10 HORAS (sleep mode)."
goto activated

:activated
echo.
echo.      DESLIGAMENTO PROGRAMADO COM SUCESSO!
echo.     **************************************
echo.
echo.
pause
echo.
exit

:cancel
echo.
echo.      TODOS OS DESLIGAMENTOS FORAM CANCELADOS
echo.     *****************************************
echo.               DESLIGUE MANUALMENTE
echo.
echo.
shutdown -a
pause
echo.
echo.
echo.

:sair
exit