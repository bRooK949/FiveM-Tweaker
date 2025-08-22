# © https://github.com/bRooK949
@echo off
title Welcome %username% !
chcp 65001
cls

set "r=[0m"
set "gr=[92m"
set "y=[93m"
set "c=[96m"
set "m=[95m"
set "w=[97m"
set "g=[90m"
set "v=[91m" 
set "p=[94m" 

echo. %m%
echo.                                                            
echo    ███████████  ███                       ██████   ██████   
echo   ░░███░░░░░░█ ░░░                       ░░██████ ██████    
echo    ░███   █ ░  ████  █████ █████  ██████  ░███░█████░███    
echo    ░███████   ░░███ ░░███ ░░███  ███░░███ ░███░░███ ░███    
echo    ░███░░░█    ░███  ░███  ░███ ░███████  ░███ ░░░  ░███    
echo    ░███  ░     ░███  ░░███ ███  ░███░░░   ░███      ░███    
echo    █████       █████  ░░█████   ░░██████  █████     █████   
echo   ░░░░░       ░░░░░    ░░░░░     ░░░░░░  ░░░░░     ░░░░░    
                                                          
                                                          
                                                                
echo %gr%           https://github.com/bRooK949
echo. %r%
echo.
echo.
echo.
echo   - Press Any Key To Boost Your FiveM ! 
pause >nul
cls

color c

echo.
echo.
echo %gr% - Clearing FiveM Cache... %r%
timeout /t 2 >nul
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\game-storage"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\nui-storage"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache-priv"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\logs"
rmdir /s /q "%LocalAppData%\FiveM\FiveM.app\crashes"
cls
timeout /t 2 >nul
echo %gr% - Boosting FiveM & GTA5 V... %r%
taskkill /f /im GTAVLauncher.exe
wmic process where name="FiveM.exe" CALL setpriority 128
wmic process where name="FiveM_b2612_GTAProcess.exe" CALL setpriority 128
wmic process where name="FiveM_b2372_GTAProcess.exe" CALL setpriority 128
cls
timeout /t 2 >nul
echo %gr% - General PC Cleaning... %r%
del /s /f c:\*.tmp
del /s /f c:\*.old
del /s /f c:\*.log
del /s /f /q %temp%\*.*
del /s /f /q %windir%\temp\*.*
del /s /f /q %WinDir%\Temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /q /f  %systemdrive%\$Recycle.bin\*
cls
timeout /t 2 >nul
echo %gr% - Repairing PC... %r%
sfc /scannow
DISM /Online /Cleanup-Image /RestoreHealth
taskkill /f /im explorer.exe
start explorer.exe
cls
timeout /t 2 >nul
echo %gr% - Network Optimizing... %r%
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global rsc=enabled
ipconfig /flushdns
ipconfig /renew
cls
echo msgbox "Finished! Please Restart Your Computer." > %tmp%\tmp.vbs 
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs
exit




