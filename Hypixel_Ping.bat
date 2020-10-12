:pinger
@echo off&cls
set /p ipAdr=Enter IP Adress to continue 
echo Pinging "%ipAdr%"
for /F "tokens=7 delims== " %%G in ('
    ping -4 -n 1 %ipAdr%^|findstr /i "TTL="') do @echo  Ping complete! Your ping is %%G
set /p answer=Do you want to check your ping again?(Y/N)?
   if /i "%answer:~,1%" EQU "Y" goto pinger
   if /i "%answer:~,1%" EQU "N" exit /b