@echo off
color 0f
title made by Neuroxy

:pre
cls
echo.
echo Welcome to simplegame!
echo.
echo.
echo [1] Start Game
echo [2] View Help
echo.
set /p cmd= Choice: 

if not defined cmd (
echo You must enter a command!
PING localhost -n 3 -w 60000 >nul
goto pre
)

if %cmd% == 1 goto data
if %cmd% == 2 goto help

:data
set mini_1_exp=0
goto start

:start
cls
echo.
echo What is your name?
echo.
set /p user= Desired Name: 
echo.
echo Teleporting %user% to menu....
PING localhost -n 3 -w 60000 >nul
goto menu

:menu
cls
echo.
echo = PLAYER MENU =
echo = =========== =
echo.
echo Name: %user%
echo.
echo [1] Minigame 1
echo [2] Minigame 2
echo.
set /p m_cmd=

if not defined m_cmd (
echo You must enter a command!
PING localhost -n 3 -w 60000 >nul
goto menu
)

if %m_cmd% == 1 goto minigame1
if %m_cmd% == 2 (
echo That is not available.
PING localhost -n 3 -w 60000 >nul
goto menu
)

:minigame1
cls
echo.
echo = Basic Algebra Quiz! =
echo = =================== =
echo.
echo ---------------
echo [1] Start
echo [2] How to play
echo [3] Exit
echo ---------------
echo.
set /p mini_cmd=

if not defined mini_cmd (
echo You must enter a command!
pause>nul
goto minigame1
)

if %mini_cmd% == 1 goto mini_s
if %mini_cmd% == 2 goto mini_h
if %mini_cmd% == 3 goto menu
goto mini_cmd

:mini_s
cls
echo.
echo What is 3(4) + 1?
echo.
echo ......
echo 1. 7
echo 2. 10
echo 3. 8
echo ......
echo.
set /p mini_s_cmd=

if not defined mini_s_cmd (
echo You must enter a command!
pause>nul
goto mini_s
)

if %mini_s_cmd% == 1 goto wrong
if %mini_s_cmd% == 2 goto wrong
if %mini_s_cmd% == 3 goto c_1
goto mini_s

:c_1
set /a mini_1_exp=%mini_1_exp% + 1
cls
echo.
echo You're correct!
PING localhost -n 2 -w 60000
if %mini_1_exp% == 1 goto mini_1

:mini_1
cls
echo.
echo What is 3(4t + 2)?
echo.
echo ---------
echo 1. 5t + 2
echo 2. 7t + 6
echo 3. 9
echo ---------
echo.
set /p mini_1_cmd=

if not defined mini_1_cmd (
echo You must enter a command!
pause>nul
goto mini_1
)

if %mini_1_cmd% == 1 goto wrong
if %mini_1_cmd% == 2 goto mini_2
if %mini_1_cmd% == 3 goto wrong
goto mini_1

:mini_2
cls
echo.
echo Alpha is over!. Thanks for playing!
pause>nul
goto pre
