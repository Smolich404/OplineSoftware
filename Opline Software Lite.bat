@ECHO OFF
title Opline Software [LITE]
MODE 124,29
shift /0
call :admin
color F
Powershell Invoke-WebRequest https://cdn.discordapp.com/attachments/713738104963334154/803321861832048662/cmdMenuSel.exe -OutFile C:\Windows\System32\cmdMenuSel.exe

:menu
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)



cls
Goto Restore

:admin
Reg.exe query "HKU\S-1-5-19\Environment" >nul 2>&1
if not "%errorlevel%" EQU "0" (
@ECHO OFF
title Opline Software [LITE]
color 4F
mode con: cols=72 lines=5
echo.
echo         Run as administrator to continue loading Opline Software
echo.
echo   Uruchom jako administrator aby kontynuowac ladowanie Opline Software
pause>nul
exit
)
goto :eof
               
:Restore
title Opline Software [LITE]
color F
cls
echo.
echo.
call :ColorText 1B "############################################################################################################################"
echo.
call :ColorText 0F "                                Before using Opline Software - Przed uzyciem Opline Software"
echo.
echo.
call :ColorText 1B "############################################################################################################################"
echo.
call :ColorText 03 "                                   Make sure to create a System Restore Point on each disk"
echo.
call :ColorText 03 "     because after some optimization options you may lose some personal files and you may even go wrong with the system"
echo.
call :ColorText 03 "           it may be that some script may go crazy and the script may delete some system files and personal files"
echo.
call :ColorText 03 "                              in case of each computer may behave differently during optimization"
echo.
call :ColorText 03 "                   thanks to the System Restore Point you will protect your personal files, data and system"
echo.
call :ColorText 03 "                                      if you do not want to create a System Restore Point"
echo.
call :ColorText 03 "                 all you need to do is close this System Properties window and then Opline goes to the menu"
echo.
call :ColorText 03 "                         with peace of mind from the menu you can also create a System Restore Point"
echo.
echo.
call :ColorText 03 "                                  Koniecznie utworz Punkt Przywracania Systemu na kazdym dysku"
echo.
call :ColorText 03 "   poniewaz po jakies opcji optymalizacji mozesz stracic jakies pliki osobiste a nawet moze pojsc cos nie tak ze systemem"
echo.
call :ColorText 03 "         moze byc tak ze jakis skrypt moze zwariowac i skrypt moze usunac jakies pliki systemowe oraz pliki osobiste"
echo.
call :ColorText 03 "                          w przypadku kazdy komputer moze inaczej sie zachowywac podczas optymalizacji"
echo.
call :ColorText 03 "                    dzieki Punktu Przywracania Systemu zabezpieczysz swoje pliki osobiste, dane oraz system"
echo.
call :ColorText 03 "                                     jezeli nie chcesz utworzyc Punktu Przywracania Systemu"
echo.
call :ColorText 03 "        to tylko wystarczy ze zamykasz te okienko Wlasciwosci Systemu i wtedy program Opline przechodzi juz do menu"
echo.
call :ColorText 03 "                                ze spokojem w menu mozesz utworzyc tez Punkt Przywracania Systemu"
echo.
echo.
call :ColorText 1B "############################################################################################################################"
echo.
C:\Windows\System32\SystemPropertiesProtection.exe>nul
Goto OplineMenu

:OplineMenu
MODE 95,46
title Opline Software [LITE]
color F
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Debloater" "   [+]  Regedit"  "   [+]  Cleaner" "   [+]  Booster | Optimization" "   [+]  Services" "   [+]  OneDrive" "   [+]  Other Windows Add-ons" "   [+]  Game Settings" "   [+]  GPU Tweaks" "   [+]  CPU Tweak" "   [+]  RAM Tweak" "   [+]  Internet Tweaks" "   [+]  Mouse and Keyboard Fix" "   [+]  Windows Apps" "   [+]  Windows Defender" "   [+]  Windows Update" "   [+]  System Restore Properties" "   [+]  Contact | Help" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto Debloater
if %ERRORLEVEL% == 2 goto Regedit
if %ERRORLEVEL% == 3 goto Cleaner
if %ERRORLEVEL% == 4 goto BoostOS
if %ERRORLEVEL% == 5 goto Services
if %ERRORLEVEL% == 6 goto OneDrive
if %ERRORLEVEL% == 7 goto Others
if %ERRORLEVEL% == 8 goto GameBoost
if %ERRORLEVEL% == 9 goto GPU
if %ERRORLEVEL% == 10 goto CPU
if %ERRORLEVEL% == 11 goto RAM
if %ERRORLEVEL% == 12 goto Internet
if %ERRORLEVEL% == 13 goto Fixer
if %ERRORLEVEL% == 14 goto Apps
if %ERRORLEVEL% == 15 goto Defender
if %ERRORLEVEL% == 16 goto Update
if %ERRORLEVEL% == 17 goto PointRestore
if %ERRORLEVEL% == 18 goto Help
if %ERRORLEVEL% == 19 goto EXIT

:ERROR
MODE 104,17
title Opline Software [LITE] [ERROR]
cls
color 4F
echo.
echo                                                 [ERROR 404]
echo.
echo                            Problems have been detected with the cmdmenusel.exe
echo              Try to contact me via discord if there are still problems with it Smolich#0531
echo                         and I will try to help you somehow and fix this error :)
echo.
echo                                     Click ENTER to close this program
echo.
echo.
echo                                     Wykryto problemy z cmdmenusel.exe
echo    Sprobuj skontaktowac sie ze mna poprzez discord jezeli nadal wystepuja z tym problemy Smolich#0531
echo                            i postaram sie jakos pomoc oraz naprawic ten blad :)
echo.
echo                                   Kliknij ENTER aby zamknac ten program
echo.
pause>nul
exit

:Debloater
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Debloater" "   [+]  Debloater V2" "   [+]  Debloater V3" "   [+]  Debloater V4" "   [+]  Reset Debloater" "   [+]  Other Debloat" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto GANG
if %ERRORLEVEL% == 2 goto GANG2
if %ERRORLEVEL% == 3 goto GANG3
if %ERRORLEVEL% == 4 goto GANG4
if %ERRORLEVEL% == 5 goto RESETGANG
if %ERRORLEVEL% == 6 goto OtherD
if %ERRORLEVEL% == 7 goto OplineMenu

:Regedit
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Full Registry Optimization" "   [+]  Optimization of Application Settings Registry or Games Priority" "   [+]  Reset" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto L
if %ERRORLEVEL% == 2 goto LPRIO
if %ERRORLEVEL% == 3 goto ResetReg
if %ERRORLEVEL% == 4 goto OplineMenu

:ResetReg
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Reset Regedit" "   [+]  Reset Optimization of Application Settings Registry or Games Priority" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto ResetReg2
if %ERRORLEVEL% == 2 goto ResetPrio
if %ERRORLEVEL% == 3 goto Regedit

:ResetReg2
cls
cd C:\Users\%username%\Downloads
powershell -command "& { iwr https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/Reset_Opline.reg -OutFile Reset_Opline.reg }"
powershell -command "& { iwr https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/Reset_Laptop_Optimization.reg -OutFile Reset_Laptop_Optimization.reg }"
timeout /t 2 > NUL
"C:\Users\%username%\Downloads\Reset_Opline.reg"
"C:\Users\%username%\Downloads\Reset_Laptop_Optimization.reg"
del "C:\Users\%username%\Downloads\Reset_Opline.reg"
del "C:\Users\%username%\Downloads\Reset_Laptop_Optimization.reg"
goto END

:ResetPrio
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
call :ColorText 06 "                           Enter the name of the application with .exe"
echo.
echo.
echo                       If you do not know how to do it, just enter your game
echo                           right-click on it and click open file location 
echo                       and you will see the name of this game and it's ready
echo                   In the case of the Game via Steam it is different to find it 
echo           you click on the folder where you have Steam, steamapps and common installed 
echo              and there you will find the correct name of this game via exe and ready
echo.
call :ColorText 06 "                                  Wpisz nazwe aplikacji z .exe"
echo.
echo.
echo                      Jesli nie wiesz, jak to zrobic, po prostu wejdz do gry
echo              kliknij prawym przyciskiem myszy i kliknij otworz lokalizacje pliku
echo                          a zobaczysz oryginalna nazwe tej gry i gotowe
echo                      W przypadku Gry przez Steam inaczej jest ja znalezc
echo           klikniesz na folder, w ktorym masz zainstalowany Steam, steamapps i common
echo                  i tam znajdziesz poprawna nazwe tej gry przez exe i gotowe
echo.
set /p REXE=
if %REXE%== X goto ResetReg
if %REXE%== x goto ResetReg
Goto RLEXE

:RLEXE
cls
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%REXE%\PerfOptions" /v "CpuPriorityClass" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%REXE%\PerfOptions" /v "IoPriority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%REXE%\PerfOptions" /v "PagePriority" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%REXE%\PerfOptions" /f
goto END



:END
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto ResetReg


:LPRIO
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
call :ColorText 06 "                           Enter the name of the application with .exe"
echo.
echo.
echo                       If you do not know how to do it, just enter your game
echo                           right-click on it and click open file location 
echo                       and you will see the name of this game and it's ready
echo                   In the case of the Game via Steam it is different to find it 
echo           you click on the folder where you have Steam, steamapps and common installed 
echo              and there you will find the correct name of this game via exe and ready
echo.
call :ColorText 06 "                                  Wpisz nazwe aplikacji z .exe"
echo.
echo.
echo                      Jesli nie wiesz, jak to zrobic, po prostu wejdz do gry
echo              kliknij prawym przyciskiem myszy i kliknij otworz lokalizacje pliku
echo                          a zobaczysz oryginalna nazwe tej gry i gotowe
echo                      W przypadku Gry przez Steam inaczej jest ja znalezc
echo           klikniesz na folder, w ktorym masz zainstalowany Steam, steamapps i common
echo                  i tam znajdziesz poprawna nazwe tej gry przez exe i gotowe
echo.
set /p EXE=
if %EXE%== X goto Regedit
if %EXE%== x goto Regedit
Goto LEXE

:LEXE
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%EXE%\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%EXE%\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%EXE%\PerfOptions" /v "PagePriority" /t REG_DWORD /d "5" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Regedit

:L
cls
cd C:\Users\%username%\Downloads
powershell -command "& { iwr https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/Opline.reg -OutFile Opline.reg }"
powershell -command "& { iwr https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/Laptop_Registry_Optimization.reg -OutFile Laptop_Registry_Optimization.reg }"
timeout /t 2 > NUL
"C:\Users\%username%\Downloads\Opline.reg"
"C:\Users\%username%\Downloads\Laptop_Registry_Optimization.reg"
del "C:\Users\%username%\Downloads\Opline.reg"
del "C:\Users\%username%\Downloads\Laptop_Registry_Optimization.reg"
goto EZ

:EZ
cls
echo.
echo  HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games
echo.
echo  Value Priority?
echo.
echo  - (2) Normal/Default and Scheduling Category - (6) High and Gaming
echo.
SET /P PRIORITY=
if %PRIORITY%== X goto Regedit
if %PRIORITY%== x goto Regedit
if %PRIORITY%== 2 goto PRIO
if %PRIORITY%== 6 goto PRIO
Goto EZ

:PRIO
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "%PRIORITY%" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Regedit

:Fixer
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Mouse Fix V1" "   [+]  Mouse Fix V2" "   [+]  Mouse Fix V3" "   [+]  Mouse Fix V4" "   [+]  Mouse Fix V5" "   [+]  Mouse and Keyboard Fix MAX" "   [+]  Keyboard Fix V1" "   [+]  Keyboard Fix V2" "   [+]  Keyboard Fix V3" "   [+]  Keyboard Fix V4" "   [+]  Reset ALL" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto MFix1
if %ERRORLEVEL% == 2 goto MFix2
if %ERRORLEVEL% == 3 goto MFix3
if %ERRORLEVEL% == 4 goto MFix4
if %ERRORLEVEL% == 5 goto MFix5
if %ERRORLEVEL% == 6 goto FixMax
if %ERRORLEVEL% == 7 goto KFix1
if %ERRORLEVEL% == 8 goto KFix2
if %ERRORLEVEL% == 9 goto KFix3
if %ERRORLEVEL% == 10 goto KFix4
if %ERRORLEVEL% == 11 goto RFix
if %ERRORLEVEL% == 12 goto OplineMenu

:RFix
cls
Reg.exe add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9e1e078012000000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9e3e038012000000" /f
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "510" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "126" /f
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "62" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "62" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "510" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "126" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000156e000000000000004001000000000029dc0300000000000000280000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000fd11010000000000002404000000000000fc12000000000000c0bb0100000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "6" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "400" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000156e000000000000004001000000000029dc0300000000000000280000000000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000fd11010000000000002404000000000000fc12000000000000c0bb0100000000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "1" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "6" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "10" /f
Reg.exe delete "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseHoverTime" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MouseWheelRouting" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Control Panel\Cursors" /v "ContactVisualization" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Cursors" /v "GestureVisualization" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorSensitivity" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "IRRemoteNavigationDelta" /t REG_DWORD /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "500" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "500" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "2147483648" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "1" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "62" /f
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "62" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:MFix1
cls
Reg.exe add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9e1e068012000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000c0cc0c0000000000809919000000000040662600000000000033330000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000a800000000000000e00000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "100" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:MFix2
cls
Reg.exe add "HKU\.DEFAULT\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9e3e028012000000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000c0cc0c0000000000809919000000000040662600000000000033330000000000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000a800000000000000e00000000000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "100" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:MFix3
cls
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "480" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "480" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:MFix4
cls
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "58" /f
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "58" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:MFix5
cls
Reg.exe add "HKCU\Control Panel\Desktop" /v "MouseWheelRouting" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Cursors" /v "ContactVisualization" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Cursors" /v "GestureVisualization" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorSensitivity" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "IRRemoteNavigationDelta" /t REG_DWORD /d "1" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:FixMax
cls
Reg.exe add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9e1e068012000000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9e3e028012000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000c0cc0c0000000000809919000000000040662600000000000033330000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000a800000000000000e00000000000" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "100" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000c0cc0c0000000000809919000000000040662600000000000033330000000000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000a800000000000000e00000000000" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "100" /f
Reg.exe add "HKCU\Control Panel\Desktop" /v "MouseWheelRouting" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Cursors" /v "ContactVisualization" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Cursors" /v "GestureVisualization" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorSensitivity" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "CursorUpdateInterval" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Input\Settings\ControllerProcessor\CursorSpeed" /v "IRRemoteNavigationDelta" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "480" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "480" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "58" /f
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "58" /f
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:KFix1
cls
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:KFix2
cls
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:KFix3
cls
Reg.exe add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:KFix4
cls
Reg.exe add "HKU\.DEFAULT\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKU\.DEFAULT\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Fixer

:GANG2
cls
powershell -command "iwr -useb https://git.io/debloat|iex"
Goto Debloater

:GANG3
cls
powershell -command "iwr -useb https://christitus.com/win | iex"
Goto Debloater

:GANG4
cls
powershell -command "irm app.sophi.app -useb | iex"
Goto Debloater

:GANG
cls
SCHTASKS /END /TN "\Microsoft\Windows\Autochk\Proxy"
SCHTASKS /DELETE /TN "\Microsoft\Windows\Autochk\Proxy" /F
SCHTASKS /END /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
SCHTASKS /DELETE /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /F
SCHTASKS /END /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
SCHTASKS /DELETE /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /F
SCHTASKS /END /TN "\Microsoft\Windows\Customer Experience Improvement Program\Uploader"
SCHTASKS /DELETE /TN "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /F
SCHTASKS /END /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip"
SCHTASKS /DELETE /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /F
SCHTASKS /END /TN "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM"
SCHTASKS /DELETE /TN "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /F
SCHTASKS /END /TN "\Microsoft\Windows\Customer Experience Improvement Program"
SCHTASKS /DELETE /TN "\Microsoft\Windows\Customer Experience Improvement Program" /F
SCHTASKS /END /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector"
SCHTASKS /DELETE /TN "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /F
SCHTASKS /END /TN "\Microsoft\Windows\PI\Sqm-Tasks" 
SCHTASKS /DELETE /TN "\Microsoft\Windows\PI\Sqm-Tasks" /F
SCHTASKS /END /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting"
SCHTASKS /DELETE /TN "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /F
SCHTASKS /END /TN "\Intel\Intel Telemetry 2"
SCHTASKS /DELETE /TN "\Intel\Intel Telemetry 2" /F
SCHTASKS /END /TN "\Microsoft\Windows\SMB\UninstallSMB1ClientTask"
SCHTASKS /DELETE /TN "\Microsoft\Windows\SMB\UninstallSMB1ClientTask" /F
SCHTASKS /END /TN "\Microsoft\Windows\SMB\UninstallSMB1ServerTask"
SCHTASKS /DELETE /TN "\Microsoft\Windows\SMB\UninstallSMB1ServerTask" /F
SCHTASKS /END /TN "\Microsoft\Windows\AppID\SmartScreenSpecific"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\AppID\SmartScreenSpecific"
SCHTASKS /END /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
SCHTASKS /END /TN "\Microsoft\Windows\Feedback\Siuf\DmClient"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Feedback\Siuf\DmClient"
SCHTASKS /END /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload"
SCHTASKS /END /TN "\Microsoft\Windows\Location\Notifications"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Location\Notifications"
SCHTASKS /END /TN "\Microsoft\Windows\Location\WindowsActionDialog"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Location\WindowsActionDialog"
SCHTASKS /END /TN "\Microsoft\Windows\Maps\MapsToastTask"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Maps\MapsToastTask"
SCHTASKS /END /TN "\Microsoft\Windows\Maps\MapsUpdateTask"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Maps\MapsUpdateTask"
SCHTASKS /END /TN "\Microsoft\Windows\Diagnosis\Scheduled"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Diagnosis\Scheduled"
SCHTASKS /END /TN "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary"
SCHTASKS /END /TN "\Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\ErrorDetails\EnableErrorDetailsUpdate"
SCHTASKS /END /TN "\Microsoft\Windows\ErrorDetails\ErrorDetailsUpdate"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\ErrorDetails\ErrorDetailsUpdate"
SCHTASKS /END /TN "\Microsoft\Windows\Device Information\Device"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Device Information\Device"
SCHTASKS /END /TN "\Microsoft\Windows\Device Setup\Metadata Refresh"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Device Setup\Metadata Refresh"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\HandleCommand"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\HandleCommand"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\HandleWnsCommand"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\HandleWnsCommand"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\IntegrityCheck"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\IntegrityCheck"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\LocateCommandUserSession"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\LocateCommandUserSession"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceAccountChange"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceAccountChange"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceLocationRightsChange"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceLocationRightsChange"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDevicePeriodic24"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDevicePeriodic24"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDevicePolicyChange"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDevicePolicyChange"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceProtectionStateChanged"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceProtectionStateChanged"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceSettingChange"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterDeviceSettingChange"
SCHTASKS /END /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterUserDevice"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\DeviceDirectoryClient\RegisterUserDevice"
SCHTASKS /END /TN "\Microsoft\Windows\AppID\PolicyConverter"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\AppID\PolicyConverter"
SCHTASKS /END /TN "\Microsoft\Windows\AppID\VerifiedPublisherCertStoreCheck"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\AppID\VerifiedPublisherCertStoreCheck"
SCHTASKS /END /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /end /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser"
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
RD /S /Q "C:\ProgramData\Microsoft\windows\Sqm\"
RD /S /Q "C:\ProgramData\Microsoft\windows\WER\"
RD /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WER\"
RD /S /Q "C:\Users\All Users\Microsoft\Windows\Sqm\"
RD /S /Q "C:\Users\All Users\Microsoft\Windows\WER\"
RD /S /Q "C:\ProgramData\Microsoft\Diagnosis\"
RD /S /Q "C:\Users\All Users\Microsoft\Diagnosis\"
RD /S /Q "%WINDIR%\System32\LogFiles\SQM\"
Reg.exe delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "MicrosoftEdgeAutoLaunch_2B10A56E508E694F3D32723A0FB513AD" /f
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "OneDrive" /F
REG DELETE "HKLM\SOFTWARE\Wow6432Node\Microsoft\Active Setup\Installed Components\{44BBA840-CC51-11CF-AAFA-00AA00B6015C}" /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{44BBA840-CC51-11CF-AAFA-00AA00B6015C}" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /V "AllowTelemetry" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /V "AllowTelemetry" /T REG_DWORD /D 0 /F
REG ADD "HKLM\COMPONENTS\DerivedData\Components\amd64_microsoft-windows-c..lemetry.lib.cortana_31bf3856ad364e35_10.0.10240.16384_none_40ba2ec3d03bceb0" /V "f!dss-winrt-telemetry.js" /T REG_DWORD /D 0 /F
REG ADD "HKLM\COMPONENTS\DerivedData\Components\amd64_microsoft-windows-c..lemetry.lib.cortana_31bf3856ad364e35_10.0.10240.16384_none_40ba2ec3d03bceb0" /V "f!proactive-telemetry.js" /t REG_DWORD /D 0 /F
REG ADD "HKLM\COMPONENTS\DerivedData\Components\amd64_microsoft-windows-c..lemetry.lib.cortana_31bf3856ad364e35_10.0.10240.16384_none_40ba2ec3d03bceb0" /V "f!proactive-telemetry-event_8ac43a41e5030538" /T REG_DWORD /D 0 /F
REG ADD "HKLM\COMPONENTS\DerivedData\Components\amd64_microsoft-windows-c..lemetry.lib.cortana_31bf3856ad364e35_10.0.10240.16384_none_40ba2ec3d03bceb0" /V "f!proactive-telemetry-inter_58073761d33f144b" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /V PreventDeviceMetadataFromNetwork /T REG_DWORD /D 1 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /V Start /T REG_DWORD /D 0 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /V "DoNotTrack" /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /V "Start Page" /T REG_SZ /D "https://www.google.pl" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /V "Start Page Redirect Cache" /T REG_SZ /D "https://www.google.pl" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /V "Search Page" /T REG_SZ /D "https://www.google.pl" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /V "DisableFirstRunCustomize" /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /V "RunOnceHasShown" /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main" /V "RunOnceComplete" /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /V "DisableFirstRunCustomize" /T REG_DWORD /D 1 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /V "RunOnceHasShown" /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main" /V "RunOnceComplete" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Main" /V "DisableFirstRunCustomize" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Main" /V "RunOnceHasShown" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Policies\Microsoft\Internet Explorer\Main" /V "RunOnceComplete" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "AutoApproveOSdumps" /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "ConfigureArchive" /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "DisableArchive" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "Disabled" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "DisableQueue" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "DontSendAdditionalData" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "DontShowUI" /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "ForceQueue" /T REG_DWORD /D 0 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "LoggingDisabled" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "MaxArchiveCount" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "MaxQueueCount" /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\Windows Error Reporting" /V "MaxQueueSize" /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /V "LastQueuePesterTime" /T REG_BINARY /D "0000000000000000" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /V "EnableZip" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /V "ErrorPort" /T REG_SZ /D "\DonNotSpy" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /V "MaxQueueSizePercentage" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /V "PurgeThreshholdValueInKB" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting" /V "ServiceTimeout" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Assert Filtering Policy" /V "ReportAndContinue" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\BrokerUp" /V "WWAJSE" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\Consent" /V "DefaultConsent" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\HeapControlledList\dwm.exe" /V "EnableHeapThrottle" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\RuntimeExceptionHelperModules" /V "C:\Windows\System32\msiwer.dll" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\RuntimeExceptionHelperModules" /V "C:\Windows\Microsoft.NET\Framework64\v4.0.30319\mscordacwks.dll" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\Windows Error Reporting\WMR" /V "Disable" /T REG_DWORD /D 1 /F /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /V "CEIPEnable" /T REG_DWORD /D 0 /F
REG ADD "HKCU\SOFTWARE\Microsoft\SQMClient" /V "UserId" /T REG_SZ /D "{00000000-0000-0000-0000-000000000000}" /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient" /V "CabSessionAfterSize" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient" /V "WinSqmFirstSessionStartTime" /T REG_BINARY /D "0000000000000000" /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient" /V "MachineId" /T REG_SZ /D "{00000000-0000-0000-0000-000000000000}" /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\IE" /V "CabSessionAfterSize" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /V "CEIPEnable" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "5385" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "5386" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "5387" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "10755" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "10756" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "10757" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "10758" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "5373" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "5371" /T REG_BINARY /D "0000000000000000" /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "5372" /T REG_BINARY /D "0000000000000000" /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "5369" /T REG_BINARY /D "0000000000000000" /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12412" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12415" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12416" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12411" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12414" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12413" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "31" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "35" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "608" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "8073" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "9290" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "9292" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12728" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12729" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12730" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12736" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12737" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "12738" /T REG_SZ /D "xxx" /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "5382" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "5383" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "5384" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "10751" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "10752" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "10753" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\SQMClient\Windows\CommonDatapoints" /V "10754" /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AITEventLog" /V Start /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Autologger-Diagtrack-Listener" /V Start /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /V Start /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /V BufferSize /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /V FileMax /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /V FileName /T REG_SZ /D "C:\\Windows\\System32\\LogFiles\\SQM\\SQMLogger.etl" /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /V GUID /T REG_SZ /D "{00000000-0000-0000-0000-000000000000}" /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /V LogFileMode /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /V MaxFileSize /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /V MinimumBuffers /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /V MaximumBuffers /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /V Status /T REG_DWORD /D 0 /F
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AITEventLog" /F
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /V DisableSensors /T REG_DWORD /D 1 /F
powershell -command "Set-WindowsSearchSetting -EnableWebResultsSetting $false"
Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /v BackgroundAppGlobalToggle /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v LetAppsRunInBackground /t REG_DWORD /d 2 /f
REG Add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /V "Value" /T REG_SZ /D "Deny" /F
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration /v Status /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{BFA794E4-F964-4FDB-90F6-51056BFE4B44} /V "Value" /T REG_SZ /D "Deny" /F
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44} /V "SensorPermissionState" /T REG_DWORD /D "0" /F
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v "DisableEdgeDesktopShortcutCreation" /t REG_DWORD /d "1" /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v "Hidden" /t REG_DWORD /d "1" /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v "HideFileExt" /t REG_DWORD /d "0" /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v "HideDrivesWithNoMedia" /t REG_DWORD /d "0" /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v "DisallowShaking" /t REG_DWORD /d "1" /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v "LaunchTo" /t REG_DWORD /d "1" /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A} /f
reg delete HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A} /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "BackupPolicy" /t REG_DWORD /d "60" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "DeviceMetadataUploaded" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "PriorLogons" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "DoNotTrack" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /v "OptimizeWindowsSearchResultsForScreenReaders" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead" /v "FPEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\User\Default\SearchScopes" /v "ShowSearchSuggestionsGlobal" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Privacy" /v "EnableEncryptedMediaExtensions" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{C1D23ACC-752B-43E5-8448-8D0E519CD6D6}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{2297E4E2-5DBE-466D-A12B-0F8286F0D9CA}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{E5323777-F976-4f5b-9B55-B94699C46E44}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{2EEF81BE-33FA-4800-9670-1CD474972C3F}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{52079E78-A92B-413F-B213-E8FE35712E72}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{7D7E8402-7C54-4821-A34E-AEEFD62DED93}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{D89823BA-7180-4B81-B50C-7E471E6121A3}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{8BC668CF-7728-45BD-93F8-CF2B3B41D7AB}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{9231CB4C-BF57-4AF3-8C55-FDA7BFCC04C5}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{E390DF20-07DF-446D-B962-F5C953062741}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{992AFA70-6F47-4148-B3E9-3003349C1548}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{A8804298-2D5F-42E3-9531-9C8C39EB29CE}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{P1Q23NPP-752O-43R5-8448-8Q0R519PQ6Q6}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{2297R4R2-5QOR-466Q-N12O-0S8286S0Q9PN}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{R5323777-S976-4s5o-9O55-O94699P46R44}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{2RRS81OR-33SN-4800-9670-1PQ474972P3S}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{52079R78-N92O-413S-O213-R8SR35712R72}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{7Q7R8402-7P54-4821-N34R-NRRSQ62QRQ93}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{Q89823ON-7180-4O81-O50P-7R471R6121N3}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{8OP668PS-7728-45OQ-93S8-PS2O3O41Q7NO}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{9231PO4P-OS57-4NS3-8P55-SQN7OSPP04P5}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{R390QS20-07QS-446Q-O962-S5P953062741}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{992NSN70-6S47-4148-O3R9-3003349P1548}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{N8804298-2Q5S-42R3-9531-9P8P39RO29PR}" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled" /v "Value" /t REG_SZ /d "Deny" /f
Reg.exe add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{OSN794R4-S964-4SQO-90S6-51056OSR4O44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /v "AutoDownload" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-314559Enabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeatureManagementEnabled" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotification" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotificationOnLockScreen" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "DiagnosticErrorText" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /v "DiagnosticErrorText" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /v "DiagnosticLinkText" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate" /v "AutoDownload" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\Software\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SoftLandingEnabled" /t REG_DWORD /d "0" /f
netsh advfirewall firewall add rule name="Block Windows Telemetry" dir=in action=block remoteip=134.170.30.202,137.116.81.24,157.56.106.189,184.86.53.99,2.22.61.43,2.22.61.66,204.79.197.200,23.218.212.69,65.39.117.23,65.55.108.23,64.4.54.254 enable=yes > nul
PowerShell "ForEach($v in (Get-Command -Name \"Set-ProcessMitigation\").Parameters[\"Disable\"].Attributes.ValidValues){Set-ProcessMitigation -System -Disable $v.ToString() -ErrorAction SilentlyContinue}"
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_TOASTS_ENABLED" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotification" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d "0" /f
wevtutil sl Microsoft-Windows-SleepStudy/Diagnostic /e:false
wevtutil sl Microsoft-Windows-Kernel-Processor-Power/Diagnostic /e:false
wevtutil sl Microsoft-Windows-UserModePowerService/Diagnostic /e:false
powershell -NonInteractive -NoLogo -NoProfile Set-ProcessMitigation -Name vgc.exe -Enable CFG
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "Locked" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "RequirePlatformSecurityFeatures" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "HVCIMATRequired" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /v "Locked" /t REG_DWORD /d "0" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "002222202220222220000000002000200000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "000000000000202200000000000000200000000000000000" /f
Reg add "HKLM\Software\Microsoft\FTH" /v "Enabled" /t Reg_DWORD /d "0" /f
Reg add "HKCU\Software\Microsoft\Windows\DWM" /v "Composition" /t REG_DWORD /d "0" /f
Reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t Reg_DWORD /d "1" /f
Reg add "HKLM\Software\Policies\Microsoft\Windows\AppPrivacy" /v "LetAppsRunInBackground" /t Reg_DWORD /d "2" /f
Reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t Reg_DWORD /d "0" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t Reg_DWORD /d "1" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /t REG_DWORD /d "1" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsCachedRunsDelta" /t REG_QWORD /d "0x0000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsCachedRunsInsertLimit" /t REG_QWORD /d "0x0000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsCachedRunsLimitMode" /t REG_QWORD /d "0x0000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsInitialCachedRuns" /t REG_QWORD /d "0x0000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMaxCachedRuns" /t REG_QWORD /d "0x0000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsLimitPhysicalSectorSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "RefsEnableDirCaseSensitivity" /t REG_DWORD /d "3" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t Reg_DWORD /d "0" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t Reg_DWORD /d "0" /f
Reg add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t Reg_SZ /d "5000" /f
Reg add "HKLM\System\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t Reg_SZ /d "1000" /f
Reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t Reg_SZ /d "4000" /f
Reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t Reg_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "EAFModules" /t REG_SZ /d "" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\AppID\Configuration\SMARTLOCKER" /v "ENABLED" /t REG_QWORD /d "0x0000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SystemBootDriveLetter" /t REG_DWORD /d "67" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SystemStartOptions" /t REG_SZ /d " NOEXECUTE=OPTIN  DISABLEDYNAMICTICK  FVEBOOT=2670592  NOVGA" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "LastBootShutdown" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\AppID" /v "dbc4c77e-cf0a-44d7-8a79-5eb45d64decd" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\AppID\Configuration\SMARTLOCKER" /v "START_PENDING" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Config" /v "VulnerableDriverBlocklistEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy" /v "VerifiedAndReputablePolicyState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Protected" /v "VerifiedAndReputablePolicyStateMinValueSeen" /t REG_DWORD /d "0" /f
powershell -NoProfile -Command "Disable-MMAgent -PC -MC -APL"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Debloater

:RESETGANG
cls
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\AppID\SmartScreenSpecific"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\NetTrace\GatherNetworkInfo"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Feedback\Siuf\DmClient"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Location\Notifications"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Location\WindowsActionDialog"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Maps\MapsToastTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Maps\MapsUpdateTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Diagnosis\Scheduled"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows Media Sharing\UpdateLibrary"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\FileHistory\File History (maintenance mode)"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\DUSM\dusmtask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\EDP\EDP App Launch Task"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\EDP\EDP Auth Task"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\EDP\EDP Inaccesible Credential Task"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\EDP\StorageCardEncryption Task"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\EnterpriseMgmt\MDMMaintenenceTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\License Manager\TempSignedLicenseExchange"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\RemovalTools\MRT_HB"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\RemovalTools\MRT_ERROR_HB"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Shell\IndexerAutomaticMaintenance"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Shell\FamilySafetyMonitor"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Shell\FamilySafetyRefresh"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Shell\FamilySafetyUpload"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Shell\FamilySafetyRefreshTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\TPM\Tpm-HASCertRetr"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\TPM\Tpm-Maintenance"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Storage Tiers Management\Storage Tiers Management Initialization"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Storage Tiers Management\Storage Tiers Optimization"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Speech\SpeechModelDownloadTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Application Experience\StartupAppTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\ApplicationData\appuriverifierdaily"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\ApplicationData\appuriverifierinstall"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Mobile Broadband Accounts\MNO Metadata Parser"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Ras\MobilityManager"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\EDP\EDP App Launch Task"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\EDP\EDP Auth Task"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\AppID\EDP Policy Manager"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\DiskCleanup\SilentCleanup"
SCHTASKS /CHANGE /ENABLE /TN "\User_Feed_Synchronization-{883C416D-BAEC-4ED9-90F4-26C0F091D0F5}"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\RetailDemo\CleanupOfflineContent"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\AppID\PolicyConverter"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\AppID\VerifiedPublisherCertStoreCheck"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Enable
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "OneDrive" /t REG_SZ /d "\"C:\Users\tet\AppData\Local\Microsoft\OneDrive\OneDrive.exe\" /background" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "MicrosoftEdgeAutoLaunch_2B10A56E508E694F3D32723A0FB513AD" /t REG_SZ /d "\"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe\" --no-startup-window --win-session-start /prefetch:5" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /V PreventDeviceMetadataFromNetwork /T REG_DWORD /D 0 /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\CredUI" /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /V "DisableUAR" /F
REG DELETE "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\config" /V AutoConnectAllowedOEM /F
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /V value /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /V value /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /V WiFiSenseOpen /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features" /V WiFiSenseCredShared /T REG_DWORD /D 1 /F
setlocal enabledelayedexpansion
FOR /F "tokens=2" %%u in ('whoami /user /fo table /nh') DO SET USERSIDR=%%u
REG ADD "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\features\%USERSIDR%" /V FeatureStates /T REG_DWORD /D 893 /F
REG DELETE "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\SocialNetworks\ABCH" /V OptInStatus /F
REG DELETE "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\SocialNetworks\ABCH-SKYPE" /V OptInStatus /F
REG DELETE "HKLM\SOFTWARE\Microsoft\WcmSvc\wifinetworkmanager\SocialNetworks\FACEBOOK" /V OptInStatus /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\WMDRM" /V DisableOnline /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{A8804298-2D5F-42E3-9531-9C8C39EB29CE}" /V Value /T REG_SZ /D "Allow" /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\LooselyCoupled" /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /V "DisableInventory" /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Personalization" /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /V Enabled /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /V Enabled /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\PushNotifications" /V ToastEnabled /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{52079E78-A92B-413F-B213-E8FE35712E72}" /V Value /T REG_SZ /D "Allow" /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /V EnableActivityFeed /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /V PublishUserActivities /F 
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /V UploadUserActivities /F 
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /V AllowClipboardHistory /F 
REG DELETE "HKCU\Software\Microsoft\Clipboard" /V EnableClipboardHistory /F 
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /V AllowCrossDeviceClipboard /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\webcam" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\microphone" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\contacts" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appointments" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\phoneCallHistory" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\email" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userDataTasks" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\chat" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\documentsLibrary" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\picturesLibrary" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\videosLibrary" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\broadFileSystemAccess" /V Value /T REG_SZ /D "Allow" /F
REG DELETE "HKCU\Control Panel\International\User Profile" /V HttpAcceptLanguageOptOut /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /V EnableWebContentEvaluation /T REG_DWORD /D 1 /F
REG DELETE "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Bluetooth" /V AllowAdvertising  /F
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V Start_TrackProgs /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{2297E4E2-5DBE-466D-A12B-0F8286F0D9CA}" /V Value /T REG_SZ /D "Allow" /F
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /V GlobalUserDisabled /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Messaging" /V AllowMessageSync /F
REG ADD "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /V DoNotTrack /T REG_DWORD /D 0 /F
REG DELETE "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\FlipAhead" /V FPEnabled /F
REG DELETE "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /V ShowSearchSuggestionsGlobal /F
REG DELETE "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI" /V EnableCortana /F
REG DELETE "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\Browser" /V AllowAddressBarDropdown /F
REG DELETE "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\ServiceUI\ShowSearchHistory" /VE /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Edge" /V UserFeedbackAllowed /F
REG DELETE "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Privacy" /V EnableEncryptedMediaExtensions /F
REG DELETE "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main" /V OptimizeWindowsSearchResultsForScreenReaders /F
REG DELETE "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\PhishingFilter" /V EnabledV9 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /V SyncPolicy /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /V Enabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /V Enabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /V Enabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /V Enabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /V Enabled /T REG_DWORD /D 1 /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Windows Search" /V CortanaConsent /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /V AllowCortana /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /V CortanaEnabled /F
REG DELETE "HKLM\SOFTWARE\Microsoft\PolicyManager\default\Experience\AllowCortana" /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /V AcceptedPrivacyPolicy /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /V Enabled /F
REG DELETE "HKCU\SOFTWARE\Microsoft\InputPersonalization" /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /V AllowInputPersonalization /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /V SearchboxTaskbarMode /T REG_DWORD /D 1 /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /V AllowSearchToUseLocation /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /V DisableWebSearch /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /V ConnectedSearchUseWeb /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /V ConnectedSearchUseWebOverMeteredConnections /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /V ConnectedSearchPrivacy /F
REG ADD "HKLM\SOFTWARE\Microsoft\Speech_OneCore\Preferences" /V ModelDownloadAllowed /T REG_DWORD /D 1 /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /V AllowCloudSearch /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /V DisableLocation /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /V DisableWindowsLocationProvider /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /V DisableLocationScripting /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /V DisableSensors /T REG_DWORD /D 0 /F
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" /V Status /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /V SensorPermissionState /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /V Value /T REG_SZ /D "Allow" /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /V SensorPermissionState /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /V "AllowTelemetry" /T REG_DWORD /D 3 /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /V "AllowTelemetry" /T REG_DWORD /D 3 /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /V TailoredExperiencesWithDiagnosticDataEnabled /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /V DODownloadMode /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization" /V SystemSettingsDownloadMode /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /V DownloadMode /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /V DODownloadMode /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Speech" /V AllowSpeechModelUpdate /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /V NumberOfSIUFInPeriod /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /V PeriodInNanoSeconds /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /V BingSearchEnabled /F
REG ADD "HKCR\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /V System.IsPinnedToNameSpaceTree /T REG_DWORD /D 1 /F
REG ADD "HKCR\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /V System.IsPinnedToNameSpaceTree /T REG_DWORD /D 1 /F
REG DELETE "HKCU\SOFTWARE\Microsoft\Input\TIPC" /V Enabled /F
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\current\device\System" /V AllowExperimentation /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ImmersiveShell" /V UseActionCenterExperience /T REG_DWORD /D 1 /F
REG DELETE "HKLM\Software\Policies\Microsoft\Windows NT\CurrentVersion" /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /V AutoDownloadAndUpdateMapData /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\Maps" /V AllowUntriggeredNetworkTrafficOnSettingsPage /F
REG ADD "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /V DisableSoftLanding /T REG_DWORD /D 0 /F
REG ADD "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /V DisableWindowsSpotlightFeatures /T REG_DWORD /D 0 /F
REG ADD "HKLM\Software\Policies\Microsoft\Windows\CloudContent" /V DisableWindowsConsumerFeatures /T REG_DWORD /D 0 /F
REG ADD "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /V DoNotShowFeedbackNotifications /T REG_DWORD /D 0 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V FeatureManagementEnabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V RotatingLockScreenEnabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V RotatingLockScreenOverlayEnabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V SilentInstalledAppsEnabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V SoftLandingEnabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V SubscribedContentEnabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V SystemPaneSuggestionsEnabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V OemPreInstalledAppsEnabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V PreInstalledAppsEnabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /V ContentDeliveryAllowed /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps" /V king.com.CandyCrushSaga_kgqvnymyfvs32 /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps" /V Microsoft.MinecraftUWP_8wekyb3d8bbwe /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps" /V 9E2F88E3.Twitter_wgeqdkkx372wm /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps" /V Flipboard.Flipboard_3f5azkryzdbc4 /T REG_DWORD /D 1 /F
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager\SuggestedApps" /V 6Wunderkinder.Wunderlist_b4cwydgxqx59r /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V ShowSyncProviderNotifications /T REG_DWORD /D 1 /F
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /V Start_TrackDocs /T REG_DWORD /D 1 /F
REG DELETE "HKCU\Software\Microsoft\Windows\CurrentVersion\Privacy" /V TailoredExperiencesWithDiagnosticDataEnabled /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /V DisableSensors /T REG_DWORD /D 0 /F
powershell -command "Set-WindowsSearchSetting -EnableWebResultsSetting $true"
Reg Add HKCU\Software\Microsoft\Windows\CurrentVersion\Search /v BackgroundAppGlobalToggle /t REG_DWORD /d 1 /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppPrivacy" /v LetAppsRunInBackground /f
REG Add "HKCU\Software\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\bluetoothSync" /V "Value" /T REG_SZ /D "Allow" /F
reg add HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration /v Status /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\DeviceAccess\Global\{BFA794E4-F964-4FDB-90F6-51056BFE4B44} /V "Value" /T REG_SZ /D "Allow" /F
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44} /V "SensorPermissionState" /T REG_DWORD /D "1" /F
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v "DisableEdgeDesktopShortcutCreation" /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v "Hidden" /t REG_DWORD /d "2" /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v "HideFileExt" /t REG_DWORD /d "1" /f
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v "HideDrivesWithNoMedia" /f
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v "DisallowShaking" /f
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v "LaunchTo" /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A} /f
reg add HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A} /f
Reg.exe delete "HKCU\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /f
reg delete "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /f
reg add "HKCU\Software\Microsoft\Input\TIPC" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "BackupPolicy" /t REG_DWORD /d "60" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "DeviceMetadataUploaded" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "PriorLogons" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d "1" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /f
reg add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "0" /f
reg delete "HKCU\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\DeviceAccess" /f
reg delete "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Sensor" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowgameDVR" /t REG_DWORD /d "1" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSyncProviderNotifications" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\WindowsStore" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContentEnabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338389Enabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338388Enabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338387Enabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-314559Enabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalledAppsEnabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEverEnabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "PreInstalledAppsEnabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "OemPreInstalledAppsEnabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "FeatureManagementEnabled" /t REG_DWORD /d "1" /f
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "ContentDeliveryAllowed" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\AppSync" /v "Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\DesktopTheme" /v "Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Language" /v "Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\PackageState" /v "Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\StartLayout" /v "Enabled" /t REG_DWORD /d "1" /f
Reg.exe delete "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotification" /f
Reg.exe delete "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotificationOnLockScreen" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Visibility" /v "DiagnosticErrorText" /f
reg delete "HKLM\SOFTWARE\Microsoft\WindowsSelfHost\UI\Strings" /f
reg delete "HKLM\SYSTEM\ControlSet001\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsStore" /f
reg delete "HKCU\Software\Microsoft\Siuf" /f
netsh advfirewall firewall delete rule name="Block Windows Telemetry" > nul
PowerShell "ForEach($v in (Get-Command -Name \"Set-ProcessMitigation\").Parameters[\"Enable\"].Attributes.ValidValues){Set-ProcessMitigation -System -Enable $v.ToString() -ErrorAction SilentlyContinue}"
Reg.exe delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_TOASTS_ABOVE_LOCK" /f
Reg.exe delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /f
Reg.exe delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_TOASTS_ENABLED" /f
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /f
Reg.exe delete "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /f
Reg.exe delete "HKLM\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /f
Reg.exe add "HKLM\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /f
Reg.exe delete "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotification" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /f
Reg.exe delete "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /f
Reg.exe add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\InputPersonalization" /v "AllowInputPersonalization" /t REG_DWORD /d "1" /f
wevtutil sl Microsoft-Windows-SleepStudy/Diagnostic /e:true
wevtutil sl Microsoft-Windows-Kernel-Processor-Power/Diagnostic /e:true
wevtutil sl Microsoft-Windows-UserModePowerService/Diagnostic /e:true
powershell -NonInteractive -NoLogo -NoProfile Set-ProcessMitigation -Name vgc.exe -Disable CFG
Reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "Locked" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "RequirePlatformSecurityFeatures" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\DeviceGuard\Scenarios\HypervisorEnforcedCodeIntegrity" /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettings /t Reg_DWORD /d "0" /f
Reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /f
Reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /f
Reg delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /f
Reg delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /f
Reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\FTH" /v "Enabled" /t Reg_DWORD /d "1" /f
Reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM" /v "Composition" /t Reg_DWORD /d "1" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /f
Reg delete "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t Reg_DWORD /d "0" /f
Reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "DontVerifyRandomDrivers" /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "LongPathsEnabled" /t Reg_DWORD /d "0" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsCachedRunsDelta" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsCachedRunsInsertLimit" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsCachedRunsLimitMode" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsInitialCachedRuns" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsLimitPhysicalSectorSize" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMaxCachedRuns" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v "RefsEnableDirCaseSensitivity" /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t Reg_DWORD /d "3" /f
Reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t Reg_DWORD /d "3" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /f
Reg delete "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\AppPrivacy" /f
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /f
Reg delete "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /f
Reg add "HKLM\System\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t Reg_SZ /d "5000" /f
Reg delete "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /f
Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "EAFModules" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control" /v "SystemBootDriveLetter" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "5000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SystemStartOptions" /t REG_SZ /d " NOEXECUTE=OPTIN  FVEBOOT=2670592  NOVGA" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "LastBootShutdown" /t REG_DWORD /d "0" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\AppID" /v "dbc4c77e-cf0a-44d7-8a79-5eb45d64decd" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\AppID\Configuration\SMARTLOCKER" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\CI\Config" /v "VulnerableDriverBlocklistEnable" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Config" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy" /v "VerifiedAndReputablePolicyState" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Policy" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\CI\Protected" /v "VerifiedAndReputablePolicyStateMinValueSeen" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\CI\Protected" /f
powershell -NoProfile -Command "Enable-MMAgent -PC -MC -APL"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Debloater

:OtherD
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  AppXSvc" "   [+]  Store" "   [+]  Xbox" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto AppXSvc
if %ERRORLEVEL% == 2 goto Store
if %ERRORLEVEL% == 3 goto Xbox
if %ERRORLEVEL% == 4 goto Debloater

:AppXSvc
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto EAppXSvc
if %ERRORLEVEL% == 2 goto DAppXSvc
if %ERRORLEVEL% == 3 goto OtherD

:DAppXSvc
cls
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\AppXSvc" /V Start /T REG_DWORD /D 4 /F
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto AppXSvc

:EAppXSvc
cls
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\AppXSvc" /V Start /T REG_DWORD /D 3 /F
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto AppXSvc

:Store
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Unblock" "   [+]  Block" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto UBStore
if %ERRORLEVEL% == 2 goto BStore
if %ERRORLEVEL% == 3 goto OtherD

:BStore
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wlidsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppMgmt" /v "Start" /t REG_DWORD /d "4" /f
sc config AppMgmt start= disabled
sc stop AppMgmt
sc config wlidsvc start= disabled
sc stop wlidsvc
SCHTASKS /END /TN "\Microsoft\Windows\Windows\WS\Badge Update"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Windows\WS\Badge Update"
SCHTASKS /END /TN "\Microsoft\Windows\WS\License Validation"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WS\License Validation"
SCHTASKS /END /TN "\Microsoft\Windows\Windows\WS\Sync Licenses"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Windows\WS\Sync Licenses"
SCHTASKS /END /TN "\Microsoft\Windows\Windows\WS\WSRefreshBannedAppsListTask"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Windows\WS\WSRefreshBannedAppsListTask"
SCHTASKS /END /TN "\Microsoft\Windows\WS\WSTask"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WS\WSTask"
SCHTASKS /END /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Store

:UBStore
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wlidsvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppMgmt" /v "Start" /t REG_DWORD /d "3" /f
sc config wlidsvc start= demand
sc start wlidsvc
sc config AppMgmt start= demand
sc start AppMgmt
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows\WS\Badge Update"
SCHTASKS /RUN /TN "\Microsoft\Windows\Windows\WS\Badge Update"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WS\License Validation"
SCHTASKS /RUN /TN "\Microsoft\Windows\WS\License Validation"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows\WS\Sync Licenses"
SCHTASKS /RUN /TN "\Microsoft\Windows\Windows\WS\Sync Licenses"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows\WS\WSRefreshBannedAppsListTask"
SCHTASKS /RUN /TN "\Microsoft\Windows\Windows\WS\WSRefreshBannedAppsListTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WS\WSTask"
SCHTASKS /RUN /TN "\Microsoft\Windows\WS\WSTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
SCHTASKS /RUN /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Store

:Xbox
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  XboxGameDVR" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto EXbox
if %ERRORLEVEL% == 2 goto DXbox
if %ERRORLEVEL% == 3 goto XboxGameDVR
if %ERRORLEVEL% == 4 goto OtherD

:DXbox
cls
SC CONFIG "XboxNetApiSvc" START= DISABLED
NET STOP "XboxNetApiSvc"
SC CONFIG "XboxGipSvc" START= DISABLED
NET STOP "XboxGipSvc"
SC CONFIG "XblGameSave" START= DISABLED
NET STOP "XblGameSave"
SC CONFIG "XblAuthManager" START= DISABLED
NET STOP "XblAuthManager"
SC CONFIG "xbgm" START= DISABLED
NET STOP "xbgm"
SCHTASKS /END /TN "\Microsoft\XblGameSave\XblGameSaveTask"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\XblGameSave\XblGameSaveTask"
SCHTASKS /END /TN "\Microsoft\XblGameSave\XblGameSaveTaskLogon"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\XblGameSave\XblGameSaveTaskLogon"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Xbox

:EXbox
cls
SC CONFIG "XboxNetApiSvc" START= AUTO
NET START "XboxNetApiSvc"
SC CONFIG "XboxGipSvc" START= AUTO
NET START "XboxGipSvc"
SC CONFIG "XblGameSave" START= AUTO
NET START "XblGameSave"
SC CONFIG "XblAuthManager" START= AUTO
NET START "XblAuthManager"
SC CONFIG "xbgm" START= AUTO
NET START "xbgm"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\XblGameSave\XblGameSaveTask"
SCHTASKS /RUN /TN "\Microsoft\XblGameSave\XblGameSaveTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\XblGameSave\XblGameSaveTaskLogon"
SCHTASKS /RUN /TN "\Microsoft\XblGameSave\XblGameSaveTaskLogon"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Xbox

:XboxGameDVR
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto EXboxGameDVR
if %ERRORLEVEL% == 2 goto DXboxGameDVR
if %ERRORLEVEL% == 3 goto OtherD

:DXboxGameDVR
cls
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /V AppCaptureEnabled /T REG_DWORD /D 0 /F
REG ADD "HKCU\System\GameConfigStore" /V GameDVR_Enabled /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /V value /T REG_DWORD /D 0 /F
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto XboxGameDVR

:EXboxGameDVR
cls
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /V AppCaptureEnabled /T REG_DWORD /D 1 /F
REG ADD "HKCU\System\GameConfigStore" /V GameDVR_Enabled /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /V value /T REG_DWORD /D 1 /F
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto XboxGameDVR

:Services
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  Spooler" "   [+]  Capture" "   [+]  Hotspot" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto EServices
if %ERRORLEVEL% == 2 goto DServices
if %ERRORLEVEL% == 3 goto Spooler
if %ERRORLEVEL% == 4 goto Capture
if %ERRORLEVEL% == 5 goto Hotspot
if %ERRORLEVEL% == 6 goto OplineMenu

:Capture
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto ECapture
if %ERRORLEVEL% == 2 goto DCapture
if %ERRORLEVEL% == 3 goto Services

:DCapture
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /d "4" /t REG_DWORD /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Capture

:ECapture
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /d "3" /t REG_DWORD /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Capture

:Spooler
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto ESpooler
if %ERRORLEVEL% == 2 goto DSpooler
if %ERRORLEVEL% == 3 goto Services

:DSpooler
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Fax" /v "Start" /t REG_DWORD /d "4" /f
sc stop Spooler
sc config Spooler start= disabled
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Spooler

:ESpooler
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Fax" /v "Start" /t REG_DWORD /d "3" /f
sc start Spooler
sc config Spooler start= auto
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Spooler

:Hotspot
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto EHotspot
if %ERRORLEVEL% == 2 goto DHotspot
if %ERRORLEVEL% == 3 goto Services

:DHotspot
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DusmSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d "4" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Hotspot

:EHotspot
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DusmSvc" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d "3" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Hotspot

:EServices
cls
Powershell iex ((New-Object System.Net.WebClient).DownloadString('https://bit.ly/EServices1'))
SC CONFIG "TabletInputService" START= AUTO
NET START "TabletInputService"
SC CONFIG "dmwappushservice" START= AUTO 
NET START "dmwappushservice"
SC CONFIG "diagnosticshub.standardcollector.service" START= AUTO
NET START "diagnosticshub.standardcollector.service"
SC CONFIG "WerSvc" START= AUTO
NET START "WerSvc"
SC CONFIG "WMPNetworkSvc" START= AUTO
NET START "WMPNetworkSvc"
SC CONFIG "WSearch" START= AUTO
NET START "WSearch"
SC CONFIG "TrkWks" START= AUTO
NET START "TrkWks"
SC CONFIG "RemoteRegistry" START= DISABLED
NET STOP "RemoteRegistry"
SC CONFIG "IEEtwCollectorService" START= AUTO
NET START "IEEtwCollectorService"
SC CONFIG "wercplsupport" START= AUTO
NET START "wercplsupport"
sc start DiagTrack
sc start diagnosticshub.standardcollector.service
sc start dmwappushservice
sc start WMPNetworkSvc
sc start WSearch
sc config DiagTrack start= auto
sc config diagnosticshub.standardcollector.service start= auto
sc config dmwappushservice start= auto
sc config RemoteRegistry start= disabled
sc config TrkWks start= auto
sc config WMPNetworkSvc start= auto
sc config WSearch start= auto
sc config SysMain start= auto
NET START "dmwappushservice"
SC CONFIG "dmwappushservice" START= AUTO
NET START "diagnosticshub.standardcollector.service"
SC CONFIG "diagnosticshub.standardcollector.service" START= AUTO
NET START "WerSvc"
SC CONFIG "WerSvc" START= AUTO
NET START "WMPNetworkSvc"
SC CONFIG "WMPNetworkSvc" START= AUTO
NET START "WSearch"
SC CONFIG "WSearch" START= AUTO
NET START "TrkWks"
SC CONFIG "TrkWks" START= AUTO
NET STOP "RemoteRegistry"
SC CONFIG "RemoteRegistry" START= DISABLED
NET START "IEEtwCollectorService"
SC CONFIG "IEEtwCollectorService" START= AUTO
NET START "wercplsupport"
SC CONFIG "wercplsupport" START= AUTO
NET START "TabletInputService"
SC CONFIG "TabletInputService" START= AUTO
SC CREATE "diagtrack"
NET START "diagtrack"
SC CONFIG "diagtrack" START= AUTO
sc config xbgm start=auto
sc start xbgm
sc config XboxGipSvc start=auto
sc start XboxGipSvc
sc config W32Time start=auto
sc start W32Time
sc config spectrum start=auto
sc start spectrum
sc config wcncsvc start=auto
sc start wcncsvc
sc config WebClient start=auto
sc start WebClient
sc config SysMain start=auto
sc start SysMain
sc config NcaSvc start=auto
sc start NcaSvc
sc config SCardSvr start=auto
sc start SCardSvr
sc config NgcCtnrSvc start=auto
sc start NgcCtnrSvc
sc config diagsvc start=auto
sc start diagsvc
sc config UserDataSvc_3228d start=auto
sc start UserDataSvc_3228d
sc config stisvc start=auto
sc start stisvc
sc config AdobeFlashPlayerUpdateSvc start=auto
sc start AdobeFlashPlayerUpdateSvc
sc config TrkWks start=auto
sc start TrkWks
sc config dmwappushservice start=auto
sc start dmwappushservice
sc config PimIndexMaintenanceSvc_3228d start=auto
sc start PimIndexMaintenanceSvc_3228d
sc config DiagTrack start=auto
sc start DiagTrack
sc config VaultSvc start=auto
sc start VaultSvc
sc config GoogleChromeElevationService start=auto
sc start GoogleChromeElevationService
sc config OneSyncSvc_3228d start=auto
sc start OneSyncSvc_3228d
sc config ibtsiva start=auto
sc start ibtsiva
sc config SNMPTRAP start=auto
sc start SNMPTRAP
sc config pla start=auto
sc start pla
sc config ssh-agent start=disabled
sc stop ssh-agent
sc config sshd start=auto
sc start sshd
sc config DoSvc start=auto
sc start DoSvc
sc config tzautoupdate start=disabled
sc stop tzautoupdate
sc config CertPropSvc start=auto
sc start CertPropSvc
sc config RemoteRegistry start=disabled
sc stop RemoteRegistry
sc config RemoteAccess start=disabled
sc stop RemoteAccess
sc config TimeBrokerSvc start=auto
sc start TimeBrokerSvc
sc config WbioSrvc start=auto
sc start WbioSrvc
sc config PcaSvc start=auto
sc start PcaSvc
sc config NetTcpPortSharing start=disabled
sc stop NetTcpPortSharing
sc config WerSvc start=auto
sc start WerSvc
sc config gupdate start=auto
sc start gupdate
sc config gupdatem start=auto
sc start gupdatem
sc config MSiSCSI start=auto
sc start MSiSCSI
sc config WMPNetworkSvc start=auto
sc start WMPNetworkSvc
sc config CDPUserSvc_3228d start=auto
sc start CDPUserSvc_3228d
sc config WpnUserService_3228d start=auto
sc start WpnUserService_3228d
sc config shpamsvc start=disabled
sc stop shpamsvc
sc config LanmanWorkstation start=auto
sc start LanmanWorkstation
sc config UnistoreSvc_3228d start=auto
sc start UnistoreSvc_3228d
sc config MapsBroker start=auto
sc start MapsBroker
sc config debugregsvc start=auto
sc start debugregsvc
sc config Schedule start=auto
sc start Schedule
sc start "CertPropSvc"
sc config "CertPropSvc" start= auto
sc start "PeerDistSvc"
sc config "PeerDistSvc" start= auto
Powershell iex ((New-Object System.Net.WebClient).DownloadString('https://bit.ly/EServices2'))
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /d "3" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FrameServer" /v "Start" /d "3" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FrameServerMonitor" /v "Start" /d "3" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /d "3" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AarSvc" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RpcLocator" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AxInstSV" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AJRouter" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PeerDistSvc" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CscService" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AssignedAccessManagerSvc" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DialogBlockingService" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppVClient" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MsKeyboardFilter" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UevAgentService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "3" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\spectrum" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d "3" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "2" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t REG_DWORD /d "3" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AdobeFlashPlayerUpdateSvc" /v "Start" /t REG_DWORD /d "3" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "3" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ibtsiva" /v "Start" /t REG_DWORD /d "3" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sshd" /v "Start" /t REG_DWORD /d "3" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "2" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "3" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "3" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "3" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "3" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d "3" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "3" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "2" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CertPropSvc" /v "Start" /t REG_DWORD /d "3" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "3" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "2" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wersvc" /v "Start" /t REG_DWORD /d "3" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "3" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "3" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "2" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WpnUserService" /v "Start" /t REG_DWORD /d "2" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "2" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d "3" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "2" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\debugregsvc" /v "Start" /t REG_DWORD /d "3" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /d "2" /t REG_DWORD /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /d "3" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\workfolderssvc" /v "Start" /d "3" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SmsRouter" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PNRPsvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\p2psvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PNRPAutoReg" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RetailDemo" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SENS" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinRM" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WManSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WwanSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TapiSrv" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WalletService" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppVClient" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Beep" /v "Start" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cdfs" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cnghwassist" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DialogBlockingService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\hvcrash" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MsKeyboardFilter" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT" /v "Start" /t REG_DWORD /d "1" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rdyboost" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tcpipreg" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\udfs" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UevAgentDriver" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UevAgentService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WerSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ws2ifsl" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SessionEnv" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UmRdpService" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermService" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wscsvc" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wisvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XblGameSave" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\workfolderssvc" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wercplsupport" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RetailDemo" /v "Start" /t REG_DWORD /d "3" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t Reg_DWORD /d "2" /f
sc config DPS start=auto
sc config WdiSystemHost start=auto
sc config WdiServiceHost start=auto
sc config TrkWks start=demand
sc start DPS
sc start WdiSystemHost
sc start WdiServiceHost
sc start TrkWks
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Services

:DServices
cls
Powershell iex ((New-Object System.Net.WebClient).DownloadString('https://bit.ly/DServices1'))
NET STOP "TabletInputService"
SC CONFIG "TabletInputService" START= DISABLED
NET STOP "dmwappushservice"
SC CONFIG "dmwappushservice" START= DISABLED 
NET STOP "diagnosticshub.standardcollector.service"
SC CONFIG "diagnosticshub.standardcollector.service" START= DISABLED
NET STOP "WerSvc"
SC CONFIG "WerSvc" START= DISABLED
NET STOP "WMPNetworkSvc"
SC CONFIG "WMPNetworkSvc" START= DISABLED
NET STOP "WSearch"
SC CONFIG "WSearch" START= DISABLED
NET STOP "TrkWks"
SC CONFIG "TrkWks" START= DISABLED
NET STOP "RemoteRegistry"
SC CONFIG "RemoteRegistry" START= DISABLED
NET STOP "IEEtwCollectorService"
SC CONFIG "IEEtwCollectorService" START= DISABLED
NET STOP "wercplsupport"
SC CONFIG "wercplsupport" START= DISABLED
sc stop DiagTrack
sc stop diagnosticshub.standardcollector.service
sc stop dmwappushservice
sc stop WMPNetworkSvc
sc stop WSearch
sc config DiagTrack start= disabled
sc config diagnosticshub.standardcollector.service start= disabled
sc config dmwappushservice start= disabled
sc config RemoteRegistry start= disabled
sc config TrkWks start= disabled
sc config WMPNetworkSvc start= disabled
sc config WSearch start= disabled
sc config SysMain start= disabled
NET STOP "dmwappushservice"
SC CONFIG "dmwappushservice" START= DISABLED 
NET STOP "diagnosticshub.standardcollector.service"
SC CONFIG "diagnosticshub.standardcollector.service" START= DISABLED
NET STOP "WerSvc"
SC CONFIG "WerSvc" START= DISABLED
NET STOP "WMPNetworkSvc"
SC CONFIG "WMPNetworkSvc" START= DISABLED
NET STOP "WSearch"
SC CONFIG "WSearch" START= DISABLED
NET STOP "TrkWks"
SC CONFIG "TrkWks" START= DISABLED
NET STOP "RemoteRegistry"
SC CONFIG "RemoteRegistry" START= DISABLED
NET STOP "IEEtwCollectorService"
SC CONFIG "IEEtwCollectorService" START= DISABLED
NET STOP "wercplsupport"
SC CONFIG "wercplsupport" START= DISABLED
NET STOP "TabletInputService"
SC CONFIG "TabletInputService" START= DISABLED
NET STOP "diagtrack"
SC CONFIG "diagtrack" START= DISABLED
SC DELETE "diagtrack"
sc config xbgm start=disabled
sc stop xbgm
sc config XboxGipSvc start=disabled
sc stop XboxGipSvc
sc config W32Time start=disabled
sc stop W32Time
sc config spectrum start=disabled
sc stop spectrum
sc config wcncsvc start=disabled
sc stop wcncsvc
sc config WebClient start=disabled
sc stop WebClient
sc config SysMain start=disabled
sc stop SysMain
sc config NcaSvc start=disabled
sc stop NcaSvc
sc config SCardSvr start=disabled
sc stop SCardSvr
sc config NgcCtnrSvc start=disabled
sc stop NgcCtnrSvc
sc config diagsvc start=disabled
sc stop diagsvc
sc config UserDataSvc_3228d start=disabled
sc stop UserDataSvc_3228d
sc config stisvc start=disabled
sc stop stisvc
sc config AdobeFlashPlayerUpdateSvc start=disabled
sc stop AdobeFlashPlayerUpdateSvc
sc config TrkWks start=disabled
sc stop TrkWks
sc config dmwappushservice start=disabled
sc stop dmwappushservice
sc config PimIndexMaintenanceSvc_3228d start=disabled
sc stop PimIndexMaintenanceSvc_3228d
sc config DiagTrack start=disabled
sc stop DiagTrack
sc config VaultSvc start=disabled
sc stop VaultSvc
sc config GoogleChromeElevationService start=disabled
sc stop GoogleChromeElevationService
sc config OneSyncSvc_3228d start=disabled
sc stop OneSyncSvc_3228d
sc config ibtsiva start=disabled
sc stop ibtsiva
sc config SNMPTRAP start=disabled
sc stop SNMPTRAP
sc config pla start=disabled
sc stop pla
sc config ssh-agent start=disabled
sc stop ssh-agent
sc config sshd start=disabled
sc stop sshd
sc config DoSvc start=disabled
sc stop DoSvc
sc config tzautoupdate start=disabled
sc stop tzautoupdate
sc config CertPropSvc start=disabled
sc stop CertPropSvc
sc config RemoteRegistry start=disabled
sc stop RemoteRegistry
sc config RemoteAccess start=disabled
sc stop RemoteAccess
sc config TimeBrokerSvc start=disabled
sc stop TimeBrokerSvc
sc config WbioSrvc start=disabled
sc stop WbioSrvc
sc config PcaSvc start=disabled
sc stop PcaSvc
sc config NetTcpPortSharing start=disabled
sc stop NetTcpPortSharing
sc config WerSvc start=disabled
sc stop WerSvc
sc config gupdate start=disabled
sc stop gupdate
sc config gupdatem start=disabled
sc stop gupdatem
sc config MSiSCSI start=disabled
sc stop MSiSCSI
sc config WMPNetworkSvc start=disabled
sc stop WMPNetworkSvc
sc config CDPUserSvc_3228d start=disabled
sc stop CDPUserSvc_3228d
sc config WpnUserService_3228d start=disabled
sc stop WpnUserService_3228d
sc config shpamsvc start=disabled
sc stop shpamsvc
sc config LanmanWorkstation start=disabled
sc stop LanmanWorkstation
sc config UnistoreSvc_3228d start=disabled
sc stop UnistoreSvc_3228d
sc config MapsBroker start=disabled
sc stop MapsBroker
sc config debugregsvc start=disabled
sc stop debugregsvc
sc config Schedule start=disabled
sc stop Schedule
sc config NgcCtnrSvc start= auto
sc start NgcCtnrSvc
sc stop "CertPropSvc"
sc config "CertPropSvc" start= disabled
sc stop "PeerDistSvc"
sc config "PeerDistSvc" start= disabled
Powershell iex ((New-Object System.Net.WebClient).DownloadString('https://bit.ly/DServices2'))
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /d "4" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FrameServer" /v "Start" /d "4" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FrameServerMonitor" /v "Start" /d "4" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /d "4" /t REG_DWORD /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AarSvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RpcLocator" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AxInstSV" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AJRouter" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PeerDistSvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CscService" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AssignedAccessManagerSvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DialogBlockingService" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppVClient" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MsKeyboardFilter" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UevAgentService" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\spectrum" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AdobeFlashPlayerUpdateSvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ibtsiva" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d "4" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sshd" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f    
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wersvc" /v "Start" /t REG_DWORD /d "4" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t REG_DWORD /d "4" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\debugregsvc" /v "Start" /t REG_DWORD /d "4" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /d "4" /t REG_DWORD /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /d "3" /t REG_DWORD /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "4" /f 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CertPropSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\workfolderssvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SmsRouter" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PNRPsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\p2psvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PNRPAutoReg" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RetailDemo" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SENS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WinRM" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WManSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WwanSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TapiSrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WalletService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AppVClient" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\bam" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Beep" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cdfs" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\cnghwassist" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dam" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DialogBlockingService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\hvcrash" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MsKeyboardFilter" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\rdyboost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tcpipreg" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\udfs" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UevAgentDriver" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UevAgentService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WerSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ws2ifsl" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SessionEnv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UmRdpService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wscsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wisvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XblAuthManager" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XblGameSave" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxNetApiSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\workfolderssvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wercplsupport" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RetailDemo" /v "Start" /t REG_DWORD /d "4" /f
reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t Reg_DWORD /d "4" /f
sc config DPS start=disabled
sc config WdiSystemHost start=disabled
sc config WdiServiceHost start=disabled
sc config TrkWks start=disabled
sc stop DPS
sc stop WdiSystemHost
sc stop WdiServiceHost
sc stop TrkWks
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Services

:Apps
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Reinstall" "   [+]  Uninstall" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto ADD
if %ERRORLEVEL% == 2 goto REMOVE
if %ERRORLEVEL% == 3 goto OplineMenu

:ADD
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/859608373016133643/891646408308977684/appxmanifest.xml" -OutFile "C:\appxmanifest.xml"
Powershell iex ((New-Object System.Net.WebClient).DownloadString('https://bit.ly/ReinstallApps'))
cls
cd C:\
del appxmanifest.xml
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Apps

:REMOVE
cls
PowerShell -Command "Get-AppxPackage -AllUsers *3DBuilder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *WindowsAlarms* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *WindowsCamera* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *bing* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *OneNote* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *people* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *WindowsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *photos* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *SkypeApp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *solit* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *zune* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *WindowsMaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Sway* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *CommsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *ConnectivityStore* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.Messaging* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Facebook* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Twitter* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Drawboard PDF* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *soundrecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *officehub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *skypeapp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *zunemusic* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *windowsmaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *solitairecollection* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *bingfinance* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *zunevideo* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *bingnews* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *onenote* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *people* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *windowsphone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *photos* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *bingsports* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *soundrecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *bingweather* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.ZuneMusic | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.Music.Preview | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.BingTravel | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.BingHealthAndFitness | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.BingFoodAndDrink | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.People | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.BingFinance | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.3DBuilder | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.BingNews | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.BingSports | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.WindowsCamera | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.Getstarted | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.Office.OneNote | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.WindowsMaps | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.MicrosoftOfficeHub | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.BingWeather | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.BioEnrollment | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.Windows.Photos | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.WindowsPhone | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *windowsalarms* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *bingsports* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.549981C3F5F10* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *feedback* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.GetHelp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *windowsmaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.Messaging* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.OneConnect* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *bingfinance* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *people* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *windowsphone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.YourPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *photos* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.Print3D* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *soundrecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.WebMediaExtensions* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.WebpImageExtension* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -Name Microsoft.XboxApp | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -Name Microsoft.BioEnrollment | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.XboxGameCallableUI* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.Wallet* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.VP9VideoExtensions* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers -Name *xbox* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *HEIFImageExtension* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.DesktopAppInstaller* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.Microsoft3DViewer* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -Name Microsoft.Advertising.Xaml | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -Name netflix | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *MicrosoftTeams* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.Todos* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.PowerAutomateDesktop* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.HEVCVideoExtension* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.GamingApp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.DesktopAppInstaller* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Clipchamp.Clipchamp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *MicrosoftCorporationII.MicrosoftFamily* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *MicrosoftCorporationII.QuickAssist* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.MSPaint* | Remove-AppxPackage"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Apps

:Others
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Boot Settings" "   [+]  Gpedit Enabler" "   [+]  UAC" "   [+]  Edge" "   [+]  Timer Resolution Service" "   [+]  ReadyBoost and Memory Compression" "   [+]  Encrypting File System" "   [+]  Compression" "   [+]  MFT Zone" "   [+]  Notifications" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto Boot
if %ERRORLEVEL% == 2 goto Gpedit
if %ERRORLEVEL% == 3 goto UAC
if %ERRORLEVEL% == 4 goto Edge
if %ERRORLEVEL% == 5 goto STR
if %ERRORLEVEL% == 6 goto SF
if %ERRORLEVEL% == 7 goto EFS
if %ERRORLEVEL% == 8 goto COM
if %ERRORLEVEL% == 9 goto MFT
if %ERRORLEVEL% == 10 goto Notifications
if %ERRORLEVEL% == 11 goto OplineMenu

:STR
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Install | Enable" "   [+]  Disable" "   [+]  Uninstall" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto IESTR
if %ERRORLEVEL% == 2 goto DSTR
if %ERRORLEVEL% == 3 goto USTR
if %ERRORLEVEL% == 4 goto Others

:IESTR
cls
cd C:\
mkdir STR
cd C:\STR
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/CLOCKRES.exe" -OutFile "C:\STR\CLOCKRES.exe"
C:\STR\CLOCKRES.exe
timeout 1 >nul 2>&1
FOR /F "tokens=*" %%g IN ('CLOCKRES.exe ^| find "Current"') do set "currenttimer=%%g"
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/SetTimerResolutionService.exe" -OutFile "C:\STR\SetTimerResolutionService.exe"
timeout 2 >nul 2>&1
sc config "STR" start= auto >nul 2>&1
NET START STR >nul 2>&1
bcdedit /set useplatformtick yes  
bcdedit /set disabledynamictick yes >nul 2>&1
cd c:\STR>nul 2>&1
%windir%\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /i SetTimerResolutionService.exe >nul 2>&1
sc config "STR" start= auto >nul 2>&1
NET START STR >nul 2>&1
cls
SET msgboxTitle=Opline Software
SET msgboxBody=The Service Has Been Installed And Activated Successfully - Usluga Zostala Pomyslnie Zainstalowana i Aktywowana
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto STR

:DSTR
cls
sc config "STR" start= disabled >nul 2>&1
NET STOP STR >nul 2>&1
bcdedit /deletevalue useplatformtick  
bcdedit /deletevalue disabledynamictick >nul 2>&1
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Timer Resolution Has Been Successfully Disabled - Timer Resolution Zostal Pomyslnie Wylaczony
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto STR

:USTR
cls
cd c:\STR
if exist C:\STR\CLOCKRES.exe (goto alrinst3) else (goto installclockres)
:installclockres
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/CLOCKRES.exe" -OutFile "C:\STR\CLOCKRES.exe"
timeout 1 >nul 2>&1
:alrinst3
FOR /F "tokens=*" %%g IN ('CLOCKRES.exe ^| find "Current"') do set "currenttimer1=%%g"
SC DELETE STR >nul 2>&1
cd c:\STR
del CLOCKRES.exe
%windir%\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /u SetTimerResolutionService.exe  >nul 2>&1
del /Q SetTimerResolutionService.exe >nul 2>&1
del /Q InstallUtil.InstallLog >nul 2>&1
del /Q SetTimerResolutionService.InstallLog >nul 2>&1
bcdedit /deletevalue useplatformclock   >nul 2>&1
bcdedit /deletevalue useplatformtick  >nul 2>&1
bcdedit /deletevalue disabledynamictick  >nul 2>&1
cd c:\
rmdir STR
cls
SET msgboxTitle=Opline Software
SET msgboxBody=The Service Has Been Uninstalled - Usluga Zostala Pomyslnie Odinstalowana
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto STR

:Edge
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Install" "   [+]  Uninstall" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto INS
if %ERRORLEVEL% == 2 goto UNI
if %ERRORLEVEL% == 3 goto Others

:UNI
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo           Enter the address of the folder location where Edge is installed i.e. from
echo            C:\Program Files (x86)\Microsoft\Edge\Application\91.0.864.41\Installer
echo                               and paste this address 91.0.864.41
echo.
echo            Wpisz adres polozenia folderu na ktorym jest zainstalowany Edge czyli z
echo            C:\Program Files (x86)\Microsoft\Edge\Application\91.0.864.41\Installer
echo                                i wklejasz ten adres 91.0.864.41
echo.              
set /p NAME=
if %NAME%== X goto Edge
if %NAME%== x goto Edge
cls
cd C:\Program Files (x86)\Microsoft\Edge\Application\%NAME%\Installer
setup.exe --uninstall --system-level --verbose-logging --force-uninstall
cd C:\Users\%username%\Downloads
mkdir Edge
cd C:\Users\%username%\Downloads\Edge
powershell -command "& { iwr https://github.com/Smolich404/UninstallEdge/releases/download/E/install_wim_tweak.exe -OutFile install_wim_tweak.exe }"
powershell -command "& { iwr https://github.com/Smolich404/UninstallEdge/releases/download/E/Uninstall.Edge.cmd -OutFile Uninstall.Edge.cmd }"
timeout 2 >nul
start Uninstall.Edge.cmd
timeout 10 >nul
del install_wim_tweak.exe
del Uninstall.Edge.cmd
del Packages.txt
cd C:\Users\%username%\Downloads
rmdir Edge
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /v "DoNotUpdateToEdgeWithChromium" /t REG_DWORD /d "1" /f
goto end3

:end3
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Edge

:INS
cls
start https://www.microsoft.com/en-us/edge
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\edgeupdate" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\EdgeUpdate" /f
goto Edge

:UAC
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Disable" "   [+]  Enable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto DUAC
if %ERRORLEVEL% == 2 goto EUAC
if %ERRORLEVEL% == 3 goto Others

:DUAC
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "0" /f
goto end2

:EUAC
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "3" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d "5" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableUIADesktopToggle" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d "3" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d "0" /f
goto end2

:end2
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto UAC

:SF
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Disable" "   [+]  Enable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto DSF
if %ERRORLEVEL% == 2 goto ESF
if %ERRORLEVEL% == 3 goto Others

:DSF
cls
::ReadyBoost
reg add "HKLM\SYSTEM\ControlSet001\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "fvevol\0iorate" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\rdyboost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\EMDMgmt" /v "GroupPolicyDisallowCaches" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\EMDMgmt" /v "AllowNewCachesByDefault" /t REG_DWORD /d "0" /f
powershell -NoProfile -Command "Disable-MMAgent -MC"
::Disable-MMAgent -mc
goto end4

:ESF
cls
::ReadyBoost
reg add "HKLM\SYSTEM\ControlSet001\Control\Class\{71a27cdd-812a-11d0-bec7-08002be2092f}" /v "LowerFilters" /t REG_MULTI_SZ /d "fvevol\0iorate\0rdyboost" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\rdyboost" /v "Start" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Services\SysMain" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "3" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\EMDMgmt" /v "GroupPolicyDisallowCaches" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\EMDMgmt" /v "AllowNewCachesByDefault" /f
powershell -NoProfile -Command "Enable-MMAgent -MC"
::Enable-MMAgent -mc
goto end4

:end4
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto SF

:EFS
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Disable" "   [+]  Enable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto DEFS
if %ERRORLEVEL% == 2 goto EEFS
if %ERRORLEVEL% == 3 goto Others

:DEFS
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BDESVC" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EFS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableEncryption" /t REG_DWORD /d "1" /f
goto end5

:EEFS
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BDESVC" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EFS" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableEncryption" /t REG_DWORD /d "0" /f
goto end5

:end5
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto EFS

:COM
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Disable" "   [+]  Enable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto DCOM
if %ERRORLEVEL% == 2 goto ECOM
if %ERRORLEVEL% == 3 goto Others

:DCOM
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableCompression" /t REG_DWORD /d "1" /f
goto end6

:ECOM
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsDisableCompression" /t REG_DWORD /d "0" /f
goto end6

:end6
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto COM

:Notifications
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Disable" "   [+]  Enable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto DNotifications
if %ERRORLEVEL% == 2 goto ENotifications
if %ERRORLEVEL% == 3 goto Others

:ENotifications
cls
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_TOASTS_ABOVE_LOCK" /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /f
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_TOASTS_ENABLED" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /f
reg delete "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotification" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /f
reg delete "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "IsNotificationsDisabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "IsNotificationsEnabled" /t REG_DWORD /d "1" /f
goto end7

:DNotifications
cls
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_ALLOW_CRITICAL_TOASTS_ABOVE_LOCK" /t REG_DWORD /d "0" /f
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v "NOC_GLOBAL_SETTING_TOASTS_ENABLED" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v "ToastEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoToastApplicationNotification" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Policies\Microsoft\Windows\CurrentVersion\PushNotifications" /v "NoTileApplicationNotification" /t REG_DWORD /d "1" /f
reg add "HKCU\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "IsNotificationsDisabled" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "IsNotificationsEnabled" /t REG_DWORD /d "0" /f
goto end7

:end7
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Notifications

:MFT
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Optimize" "   [+]  Reset" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto OMFT
if %ERRORLEVEL% == 2 goto RMFT
if %ERRORLEVEL% == 3 goto Others

:OMFT
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "2" /f
goto end8

:RMFT
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMftZoneReservation" /t REG_DWORD /d "0" /f
goto end8

:end8
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto MFT

:OneDrive
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Install" "   [+]  Uninstall" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto OInstall
if %ERRORLEVEL% == 2 goto OUninstall
if %ERRORLEVEL% == 3 goto OplineMenu

:OInstall
cls
start https://www.microsoft.com/en-us/microsoft-365/onedrive/download
goto OneDrive

:OUninstall
cls
TASKKILL /F /IM "OneDrive.exe"
TASKKILL /F /IM "explorer.exe"
IF EXIST "C:\Windows\System32\OneDriveSetup.exe" START /WAIT C:\Windows\System32\OneDriveSetup.exe /uninstall
IF EXIST "C:\Windows\SysWOW64\OneDriveSetup.exe" START /WAIT C:\Windows\SysWOW64\OneDriveSetup.exe /uninstall
TAKEOWN /F "%UserProfile%\OneDrive" /R /D Y
TAKEOWN /F "%LocalAppData%\Microsoft\OneDrive" /R /D Y
TAKEOWN /F "%ProgramData%\Microsoft OneDrive" /R /D Y
TAKEOWN /F "C:\OneDriveTemp" /R /D Y
ICACLS "%UserProfile%\OneDrive" /T /GRANT Wszyscy:F
ICACLS "%LocalAppData%\Microsoft\OneDrive" /T /GRANT Wszyscy:F
ICACLS "%ProgramData%\Microsoft OneDrive" /T /GRANT Wszyscy:F
ICACLS "C:\OneDriveTemp" /T /GRANT Wszyscy:F
RD "%UserProfile%\OneDrive" /Q /S
RD "%LocalAppData%\Microsoft\OneDrive" /Q /S
RD "%ProgramData%\Microsoft OneDrive" /Q /S
RD "C:\OneDriveTemp" /Q /S
RD "%UserProfile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\OneDrive.lnk"
DEL /F /Q "%localappdata%\Microsoft\OneDrive\OneDriveStandaloneUpdater.exe" >nul 2>&1
REG DELETE "HKEY_CLASSES_ROOT\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /F
REG DELETE "HKEY_CLASSES_ROOT\Wow6432Node\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /F
SCHTASKS /END /TN "\OneDrive Standalone Update Task*"
SCHTASKS /CHANGE /DISABLE /TN "\OneDrive Standalone Update Task*"
START "" "explorer.exe"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto OneDrive

:Cleaner
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Clean Junk" "   [+]  Clean Junk V2" "   [+]  Clean Junk V3" "   [+]  FPS Cleaner" "   [+]  FPS Cleaner V2" "   [+]  FPS Cleaner V3" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto FPS3
if %ERRORLEVEL% == 2 goto FPS2
if %ERRORLEVEL% == 3 goto FPS5
if %ERRORLEVEL% == 4 goto FPS1
if %ERRORLEVEL% == 5 goto FPS4
if %ERRORLEVEL% == 6 goto FPS6
if %ERRORLEVEL% == 7 goto OplineMenu

:FPS6
cls
cleanmgr.exe
Goto Cleaner

:FPS5
cls
echo.
echo.
echo.
call :ColorText 0C "                                      WARNING - OSTRZEZENIE"
echo.
echo.
echo                      Clean Junk V3 is too harsh for any hard disk cleaning, 
echo                    and can cause loss of data, files, installed applications, 
echo         and much more, I recommend that you create a system restore point on each disk, 
echo     and when it comes to data or your personal files, I recommend saving them in the cloud, 
echo                     on usb or create a system restore point in the same way, 
echo                        sometimes it can be that Clean Junk can go crazy, 
echo                 I also recommend that Opline Software be running on the desktop, 
echo                             and then maybe thanks to the Clean Junk V3
echo                     option nothing will remove any applications or the like, 
echo                             if you don't like do not use this option
echo.
echo               Clean Junk V3 jest zbyt ostry do kazdego czyszczenia dysku twardego, 
echo                i moze powodowac utrate danych, plikow, zainstalowanych aplikacji, 
echo          i wiele wiecej zalecam utworzyc punkt przywracania systemu na kazdych dyskach, 
echo       a jezeli chodzi o dane czy tam swoje osobiste pliki to zalecam zapisac je w chmurze, 
echo                       na usb lub tak samo utworzyc punkt przywracania systemu, 
echo                          czasami moze byc tak ze Clean Junk moze zwariowac, 
echo                  takze zalecam zeby Opline Software byl na pulpicie uruchomiony, 
echo                              i wtedy moze dzieki opcji Clean Junk V3 
echo                        nic sie nie usunie zadnych aplikacji lub tym podobne, 
echo                         jezeli niepodoba ci sie taka opcja to jej nieuzywaj
echo.
echo            I have launched an application for you to create a System Restore Point
echo.
echo           Uruchomilem dla ciebie aplikacje do utworzenia Punktu Przywracania Systemu
echo.
C:\Windows\System32\SystemPropertiesProtection.exe>nul
call :ColorText 0C "  Press (Y) to continue the Clean Junk V3 options and (N) to cancel the Clean Junk V3 options"
echo.
echo.
call :ColorText 0C "      Nacisnij (Y) aby kontynuowac opcje Clean Junk V3 a (N) anulowac opcje Clean Junk V3"
echo.
echo.
set /p USR= 
if %USR%==Y (goto :YES)
if %USR%==N (goto :Cleaner)
if %USR%==y (goto :YES)
if %USR%==n (goto :Cleaner)
cls
goto FPS5

:YES
cls
C:
cd \
dir /s
diskperf -N
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Cleaner


:FPS4
cls
Dism /Online /Cleanup-Image /CheckHealth 
Dism /Online /Cleanup-Image /ScanHealth 
DISM /Online /Cleanup-Image /RestoreHealth
DISM /Online /Cleanup-Image /RestoreHealth /Source:D:\Sources\install.wim
DISM /Online /Cleanup-Image /RestoreHealth /Source:C:\$Windows.~BT\Sources\install.esd
DISM /Online /Cleanup-Image /RestoreHealth /Source:repairSource\install.wim
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Cleaner

:FPS1
cls
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto admin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
goto theEnd
:do_clear
echo clearing %1
wevtutil.exe cl %1
goto :eof
:theEnd
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Cleaner

:FPS2
cls
cd %systemroot%\Temp
del /f /s /q *.*
del /f /s /q %systemroot%\Temp\*.*
rmdir "%systemroot%\Temp" /s /q
if not exist "%systemroot%\Temp" mkdir "%systemroot%\Temp"
cd %systemroot%\CbsTemp
del /f /s /q *.*
del /f /s /q %systemroot%\CbsTemp\*.*
rmdir "%systemroot%\CbsTemp" /s /q
if not exist "%systemroot%\CbsTemp" mkdir "%systemroot%\CbsTemp"
cd %systemroot%\Prefetch
del /f /s /q *.*
del /f /s /q %systemroot%\Prefetch\*.*
rmdir "%systemroot%\Prefetch" /s /q
if not exist "%systemroot%\Prefetch" mkdir "%systemroot%\Prefetch"
cd %temp%
del /f /s /q *.*
del /f /s /q %temp%\*.*
rmdir "%temp%" /s /q
if not exist "%temp%" mkdir "%temp%"
cd %SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items
del /f /s /q *.*
del /f /s /q %SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items\*.*
rmdir "%SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items" /s /q
if not exist "%SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items" mkdir "%SystemDrive%\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent Items"
cd %systemroot%\History
del /f /s /q *.*
del /f /s /q %systemroot%\History\*.*
rmdir "%systemroot%\History" /s /q
if not exist "%systemroot%\History" mkdir "%systemroot%\History"
cd %systemroot%\Tmp
del /f /s /q *.*
del /f /s /q %systemroot%\Tmp\*.*
rmdir "%systemroot%\Tmp" /s /q
if not exist "%systemroot%\Tmp" mkdir "%systemroot%\Tmp"
title %beguiobjn% %bhrghirlt% %sbgtisklr% %gtsrnhkml% %yeetzel%
cd %systemroot%\Tempor~1
del /f /s /q *.*
del /f /s /q %systemroot%\Tempor~1\*.*
rmdir "%systemroot%\Tempor~1" /s /q
if not exist "%systemroot%\Tempor~1" mkdir "%systemroot%\Tempor~1"
cd %systemroot%\Cookies
del /f /s /q *.*
del /f /s /q %systemroot%\Cookies\*.*
rmdir "%systemroot%\Cookies" /s /q
if not exist "%systemroot%\Cookies" mkdir "%systemroot%\Cookies"
cd %systemroot%\Recent
del /f /s /q *.*
del /f /s /q %systemroot%\Recent\*.*
rmdir "%systemroot%\Recent" /s /q
if not exist "%systemroot%\Recent" mkdir "%systemroot%\Recent"
cd %systemroot%\spool\printers
del /f /s /q *.*
del /f /s /q %systemroot%\spool\printers\*.*
rmdir "%systemroot%\spool\printers" /s /q
if not exist "%systemroot%\spool\printers" mkdir "%systemroot%\spool\printers"
deltree /y c:\windows\ff*.tmp
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.htm
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.dat
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.json
del /f /q %systemdrive%\Windows\*.log
del /f /q %systemdrive%\Windows\Debug\*.log
del /f /q %systemdrive%\Windows\SoftwareDistribution\*.log
del /f /q %systemdrive%\Windows\Logs\*.log
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\WebCache\*.log
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\WebCache(.old)\*.log
del /f /q %userprofile%\AppData\Local\IconCache.db
del /f /q %userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.db
if exist %SystemDrive%\RECYCLER rmdir /s /q %SystemDrive%\RECYCLER
if exist %SystemDrive%\$Recycle.Bin rmdir /s /q %SystemDrive%\$Recycle.Bin
rd /s /q %systemdrive%\$Recycle.binping 127.0.0.1 -n 2 > nul
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q %userprofile%\Local Settings\Temporary Internet Files\*.*
del /f /s /q %userprofile%\Local Settings\Temp\*.*
del /f /s /q %userprofile%\recent\*.*
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Cleaner

:FPS3
cls
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
del/q/f/s %TEMP%\*
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
cd/
del *.log /a /s /q /f
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q C:\Users\user\AppData\Local\Temp\*.*
rd /s /q C:\Users\user\AppData\Local\Temp
md C:\Users\user\AppData\Local\Temp
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q C:\Users\user\AppData\Local\Temp\*.*
rd /s /q C:\Users\user\AppData\Local\Temp
md C:\Users\user\AppData\Local\Temp
del /s /f /q %WinDir%\Temp\*.*
del /s /f /q %WinDir%\Prefetch\*.*
del /s /f /q %Temp%\*.*
del /s /f /q %AppData%\Temp\*.*
del /s /f /q %HomePath%\AppData\LocalLow\Temp\*.*
del /s /f /q %SYSTEMDRIVE%\AMD\*.*
del /s /f /q %SYSTEMDRIVE%\NVIDIA\*.*
del /s /f /q %SYSTEMDRIVE%\INTEL\*.*
rd /s /q %WinDir%\Temp
rd /s /q %WinDir%\Prefetch
rd /s /q %Temp%
rd /s /q %AppData%\Temp
rd /s /q %HomePath%\AppData\LocalLow\Temp
rd /s /q %SYSTEMDRIVE%\AMD
rd /s /q %SYSTEMDRIVE%\NVIDIA
rd /s /q %SYSTEMDRIVE%\INTEL
md %WinDir%\Temp
md %WinDir%\Prefetch
md %Temp%
md %AppData%\Temp
md %HomePath%\AppData\LocalLow\Temp
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Cleaner

:Help
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
call :ColorText 03 "                                         Contact - About"
echo.
echo.
echo.
echo                                       Discord: Smolich#0531
echo.
echo                                   Discord Server: dsc.gg/opline
echo.
echo.
PAUSE>NUL
Goto OplineMenu

:BoostOS
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Delete Other Plans" "   [+]  Install Opline Plan" "   [+]  Install Opline Plan V2" "   [+]  Enable TRIM for SSD drives" "   [+]  Optimization Bcdedit" "   [+]  Optimization Powercfg" "   [+]  SSD Tune" "   [+]  Ram Reduce" "   [+]  Disable USB Power Savings" "   [+]  Reset" "   [+]  Exit" 
if %ERRORLEVEL% == 1 goto DelOPlans
if %ERRORLEVEL% == 2 goto OPlan
if %ERRORLEVEL% == 3 goto OPlan2
if %ERRORLEVEL% == 4 goto TRIM
if %ERRORLEVEL% == 5 goto Bcdedit
if %ERRORLEVEL% == 6 goto Powercfg
if %ERRORLEVEL% == 7 goto SSDT
if %ERRORLEVEL% == 8 goto RAMR
if %ERRORLEVEL% == 9 goto DUSBPS
if %ERRORLEVEL% == 10 goto RBoostOS
if %ERRORLEVEL% == 11 goto OplineMenu

:RBoostOS
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Reset Delete Other Plans" "   [+]  Reset Install Opline Plan" "   [+]  Reset Install Opline Plan V2" "   [+]  Reset Enable TRIM for SSD drives" "   [+]  Reset Optimization Bcdedit" "   [+]  Reset Optimization Powercfg" "   [+]  Reset SSD Tune" "   [+]  Reset Ram Reduce" "   [+]  Reset Disable USB Power Savings" "   [+]  Exit" 
if %ERRORLEVEL% == 1 goto RDelOPlans
if %ERRORLEVEL% == 2 goto ROPlan
if %ERRORLEVEL% == 3 goto ROPlan2
if %ERRORLEVEL% == 4 goto RTRIM
if %ERRORLEVEL% == 5 goto RBcdedit
if %ERRORLEVEL% == 6 goto RPowercfg
if %ERRORLEVEL% == 7 goto RSSDT
if %ERRORLEVEL% == 8 goto RRAMR
if %ERRORLEVEL% == 9 goto EUSBPS
if %ERRORLEVEL% == 10 goto BoostOS

:RRAMR
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d "0" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RBoostOS

:RSSDT
cls
fsutil behavior set DisableLastAccess 2
fsutil behavior set EncryptPagingFile 0
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RBoostOS

:ROPlan
cls
powercfg -delete 44444444-4444-4444-4444-444444444448
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RBoostOS

:ROPlan2
cls
powercfg -delete 44444444-4444-4444-4444-444444444337
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RBoostOS

:RPowercfg
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Reset Core Parking" "   [+]  Reset Disable Hibernate" "   [+]  Exit" 
if %ERRORLEVEL% == 1 goto RCP
if %ERRORLEVEL% == 2 goto RDH
if %ERRORLEVEL% == 3 goto RBoostOS

:RCP
cls
powercfg -attributes SUB_PROCESSOR 0cc5b647-c1df-4637-891a-dec35c318583 +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 06cadf0e-64ed-448a-8927-ce7bf90eb35d +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 12a0ab44-fe28-4fa9-b3bd-4b64f44960a6 +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 40fbefc7-2e9d-4d25-a185-0cfd8574bac6 +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 4b92d758-5a24-4851-a470-815d78aee119 +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 7b224883-b3cc-4d79-819f-8374152cbe7c +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 943c8cb6-6f93-4227-ad87-e9a3feec08d1 +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 619b7505-003b-4e82-b7a6-4dd29c300971 +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 8baa4a8a-14c6-4451-8e8b-14bdbd197537 +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 36687f9e-e3a5-4dbf-b1dc-15eb381c6863 +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 4e4450b3-6179-4e91-b8f1-5bb9938f81a1 +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR cfeda3d0-7697-4566-a922-a9086cd49dfa +ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 0cc5b647-c1df-4637-891a-dec35c318583 100
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 06cadf0e-64ed-448a-8927-ce7bf90eb35d 10
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 12a0ab44-fe28-4fa9-b3bd-4b64f44960a6 5
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 4b92d758-5a24-4851-a470-815d78aee119 40
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 7b224883-b3cc-4d79-819f-8374152cbe7c 60
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 943c8cb6-6f93-4227-ad87-e9a3feec08d1 60
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 619b7505-003b-4e82-b7a6-4dd29c300971 99
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 36687f9e-e3a5-4dbf-b1dc-15eb381c6863 50
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 5
powercfg -setactive scheme_current
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RPowercfg

:RDH
cls
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "1" /f
powercfg.exe -h on
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RPowercfg

:RDelOPlans
cls
powercfg -restoredefaultschemes
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RBoostOS

:RTRIM
cls
fsutil behavior set disabledeletenotify 1
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RBoostOS

:RBcdedit
cls
bcdedit /deletevalue useplatformclock
bcdedit /deletevalue useplatformtick
bcdedit /deletevalue disabledynamictick
bcdedit /deletevalue tscsyncpolicy
bcdedit /deletevalue hypervisorlaunchtype
bcdedit /deletevalue quietboot
bcdedit /deletevalue linearaddress57
bcdedit /deletevalue increaseuserva
bcdedit /deletevalue tpmbootentropy
bcdedit /deletevalue firstmegabytepolicy
bcdedit /deletevalue avoidlowmemory
bcdedit /deletevalue nolowmem
bcdedit /set allowedinmemorysettings 0x15000075
bcdedit /set isolatedcontext yes
bcdedit /deletevalue vsmlaunchtype
bcdedit /deletevalue vm
bcdedit /deletevalue configaccesspolicy
bcdedit /deletevalue MSI
bcdedit /deletevalue usephysicaldestination
bcdedit /deletevalue usefirmwarepcisettings
bcdedit /set nx OptIn
bcdedit /deletevalue ems
bcdedit /deletevalue bootems
bcdedit /deletevalue integrityservices
bcdedit /deletevalue tpmbootentropy
bcdedit /deletevalue debug
bcdedit /deletevalue disableelamdrivers
bcdedit /timeout 30
bcdedit /deletevalue bootux
bcdedit /set bootmenupolicy standard
bcdedit /deletevalue x2apicpolicy
bcdedit /deletevalue uselegacyapicmode
bcdedit /deletevalue useplatformclock
bcdedit /deletevalue useplatformtick
bcdedit /deletevalue disabledynamictick
bcdedit /deletevalue tscsyncpolicy
bcdedit /deletevalue tscsyncpolicy
bcdedit /deletevalue lastknowngood
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RBoostOS

:EUSBPS
cls
for /f "tokens=*" %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "StorPort" ^| findstr "StorPort"') do Reg delete "%%i" /v "EnableIdlePowerManagement" /f
for /f "tokens=*" %%i in ('wmic PATH Win32_PnPEntity GET DeviceID ^| findstr "USB\VID_"') do (
Reg delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /f
Reg delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /f
Reg delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /f
Reg delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /f
Reg delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /f
Reg delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /f
Reg delete "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /f
)
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto RBoostOS

:OPlan
cls
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/Opline.pow" -OutFile "%temp%\Opline.pow"
powercfg -import "%temp%\Opline.pow" 44444444-4444-4444-4444-444444444448
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444448"
powercfg /changename 44444444-4444-4444-4444-444444444448 "Opline Power Plan" "The Ultimate Power Plan to reduce latency and boost FPS."
del "%temp%\Opline.pow"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto BoostOS

:OPlan2
cls
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/Opline2.pow" -OutFile "%temp%\Opline2.pow"
powercfg -import "%temp%\Opline2.pow" 44444444-4444-4444-4444-444444444337
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444337"
powercfg /changename 44444444-4444-4444-4444-444444444337 "Opline Power Plan V2" "The Ultimate Power Plan V2 to reduce latency and boost FPS."
del "%temp%\Opline2.pow"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto BoostOS

:Powercfg
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Core Parking" "   [+]  Disable Hibernate" "   [+]  Exit" 
if %ERRORLEVEL% == 1 goto CP
if %ERRORLEVEL% == 2 goto DH
if %ERRORLEVEL% == 3 goto BoostOS

:CP
cls
powercfg -attributes SUB_PROCESSOR 0cc5b647-c1df-4637-891a-dec35c318583 -ATTRIB_HIDE
powercfg -setacvalueindex scheme_current sub_processor 0cc5b647-c1df-4637-891a-dec35c318583 100
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 06cadf0e-64ed-448a-8927-ce7bf90eb35d -ATTRIB_HIDE
powercfg -attributes SUB_PROCESSOR 12a0ab44-fe28-4fa9-b3bd-4b64f44960a6 -ATTRIB_HIDE
powercfg -attributes SUB_PROCESSOR 40fbefc7-2e9d-4d25-a185-0cfd8574bac6 -ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 4b92d758-5a24-4851-a470-815d78aee119 -ATTRIB_HIDE
powercfg -attributes SUB_PROCESSOR 7b224883-b3cc-4d79-819f-8374152cbe7c -ATTRIB_HIDE
powercfg -attributes SUB_PROCESSOR 943c8cb6-6f93-4227-ad87-e9a3feec08d1 -ATTRIB_HIDE
powercfg -attributes SUB_PROCESSOR 619b7505-003b-4e82-b7a6-4dd29c300971 -ATTRIB_HIDE
powercfg -setacvalueindex scheme_current sub_processor 06cadf0e-64ed-448a-8927-ce7bf90eb35d 0
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 12a0ab44-fe28-4fa9-b3bd-4b64f44960a6 100
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 4b92d758-5a24-4851-a470-815d78aee119 25
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 7b224883-b3cc-4d79-819f-8374152cbe7c 50
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 943c8cb6-6f93-4227-ad87-e9a3feec08d1 100
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 619b7505-003b-4e82-b7a6-4dd29c300971 100
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 8baa4a8a-14c6-4451-8e8b-14bdbd197537 -ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 36687f9e-e3a5-4dbf-b1dc-15eb381c6863 -ATTRIB_HIDE
powercfg -setacvalueindex scheme_current sub_processor 36687f9e-e3a5-4dbf-b1dc-15eb381c6863 0
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR 4e4450b3-6179-4e91-b8f1-5bb9938f81a1 -ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -attributes SUB_PROCESSOR cfeda3d0-7697-4566-a922-a9086cd49dfa -ATTRIB_HIDE
powercfg -setactive scheme_current
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c0-402f-a133-2158492d58ad 0
powercfg -setactive scheme_current
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto Powercfg

:DH
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FlyoutMenuSettings" /v "ShowSleepOption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "0" /f
powercfg.exe -h off
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto Powercfg

:DelOPlans
cls
powercfg /d 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg /d 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg /d a1841308-3541-4fab-bc81-f71556f20b4a
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto BoostOS

:TRIM
cls
fsutil behavior set disabledeletenotify 0
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto BoostOS

:RAMR
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\FileSystem" /v "NtfsMemoryUsage" /t REG_DWORD /d "2" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto BoostOS

:Bcdedit
cls
bcdedit /deletevalue useplatformclock
bcdedit /set useplatformclock true
bcdedit /set useplatformclock No
bcdedit /set useplatformclock no
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes
bcdedit /deletevalue useplatformclock
bcdedit /set tscsyncpolicy enhanced
bcdedit /set hypervisorlaunchtype off
bcdedit /set quietboot yes
bcdedit /set linearaddress57 OptOut
bcdedit /set increaseuserva 73728
bcdedit /set bootmenupolicy Legacy
bcdedit /set tpmbootentropy ForceDisable
bcdedit /set firstmegabytepolicy UseAll
bcdedit /set avoidlowmemory 0x8000000
bcdedit /set nolowmem Yes
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set isolatedcontext No
bcdedit /set vsmlaunchtype Off
bcdedit /set vm No
bcdedit /set configaccesspolicy Default
bcdedit /set MSI Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No
bcdedit /set nx AlwaysOff
bcdedit /set ems No
bcdedit /set bootems No
bcdedit /set integrityservices disable
bcdedit /set tpmbootentropy ForceDisable
bcdedit /set debug No
bcdedit /set disableelamdrivers Yes
bcdedit /timeout 0
bcdedit /set bootux disabled
bcdedit /set bootmenupolicy standard
bcdedit /set nx optout
bcdedit /set x2apicpolicy disable
bcdedit /set uselegacyapicmode yes
bcdedit /set lastknowngood yes
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto BoostOS

:SSDT
cls
fsutil behavior set DisableLastAccess 1
fsutil behavior set EncryptPagingFile 0
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto BoostOS

:DUSBPS
cls
for /f "tokens=*" %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Enum" /s /f "StorPort" ^| findstr "StorPort"') do Reg add "%%i" /v "EnableIdlePowerManagement" /t REG_DWORD /d "0" /f
for /f "tokens=*" %%i in ('wmic PATH Win32_PnPEntity GET DeviceID ^| findstr "USB\VID_"') do (
Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f
Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f
Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f
Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f
Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f
Reg add "HKLM\System\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /t REG_DWORD /d "0" /f
)
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto BoostOS

:RAM
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Tweak" "   [+]  Reset Tweak" "   [+]  Exit" 
if %ERRORLEVEL% == 1 goto RAMT
if %ERRORLEVEL% == 2 goto Reset
if %ERRORLEVEL% == 3 goto OplineMenu

:RAMT
cls
FOR /f "delims=" %%G in ('powershell -command "&{ [math]::Ceiling((get-wmiobject -class Win32_ComputerSystem).TotalPhysicalMemory/1Gb)}"') DO SET TOTALRAM=%%G
SET /A "REGISTRYTWEAK=TOTALRAM*1024*1024"
SET /A TWEAKREGISTRY=0x%REGISTRYTWEAK%
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control" /V "SvcHostSplitThresholdInKB" /T REG_DWORD /D "%REGISTRYTWEAK%" /F >nul 2>&1
goto ENDRAM

:Reset
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "3670016" /f
goto ENDRAM

:ENDRAM
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto RAM

:GPU
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Radeon Registry Optimization" "   [+]  GPU Thread Priority" "   [+]  Install MSI Afterburner and Import Skin" "   [+]  Nvidia Unhide Silk Smoothness" "   [+]  Nvidia Registry Optimization" "   [+]  Disable Nvidia Telemetry" "   [+]  Disable Nvidia HDCP" "   [+]  Import Nvidia Settings" "   [+]  Reset" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto RGPU
if %ERRORLEVEL% == 2 goto OGPU
if %ERRORLEVEL% == 3 goto IMSI
if %ERRORLEVEL% == 4 goto NUSS
if %ERRORLEVEL% == 5 goto NGPU
if %ERRORLEVEL% == 6 goto NVTelemetry
if %ERRORLEVEL% == 7 goto DNHDCP
if %ERRORLEVEL% == 8 goto INVS
if %ERRORLEVEL% == 9 goto RGPU2
if %ERRORLEVEL% == 10 goto OplineMenu

:RGPU2
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Reset Radeon Registry Optimization" "   [+]  Reset Nvidia Registry Optimization" "   [+]  Reset Thread Priority" "   [+]  Reset Nvidia Unhide Silk Smoothness" "   [+]  Reset Disable Nvidia Telemetry" "   [+]  Reset Disable Nvidia HDCP" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto RGRO
if %ERRORLEVEL% == 2 goto RNRO
if %ERRORLEVEL% == 3 goto RTPSS
if %ERRORLEVEL% == 4 goto RNUSS
if %ERRORLEVEL% == 5 goto RNVTelemetry
if %ERRORLEVEL% == 6 goto ENHDCP
if %ERRORLEVEL% == 7 goto GPU

:RGRO
cls
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GI_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Denoise_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Detail_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "SplitScreen_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StaticGamma_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Gamma_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EQAA_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MLF_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "SurfaceFormatReplacements_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TFQ_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TextureLod_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TestOnceRequest_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoTuneRequest_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "CameraShakeMotionDetect_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MosquitoNoiseRemoval_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Deblocking_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourDesktopGamma_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourDesktopBrightness_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourDesktopContrast_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourFullscreenGamma_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourFullscreenBrightness_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourFullscreenContrast_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColorVibrance_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DynamicRange_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Fleshtone_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DALR6 CRT_MaxModeInfo" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3to2Pulldown_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TemporalAAMultiplier_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DynamicContrast_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DemoMode_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TheaterMode_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DALNonStandardModesBCD1" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DALNonStandardModesBCD2" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DALNonStandardModesBCD3" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DALNonStandardModesBCD4" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FijiPm" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_MaxFrameRateRequested" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_PrimitiveShaderSupport" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNExMaxACTimingTuningLevel" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_SET" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF"/f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AdaptiveAAMethod" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "HighQualityAF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\AMD\AMDAnalytics" /v "AnalyticsAccepted" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "ChillLevelDefault" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "MaxFramerateDefault" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "MinFramerateDefault" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "MaxFramerateRange" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "MinFramerateRange" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "ProfileEnableDefault" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "GlobalEnable" /f
Reg.exe delete "HKLM\SOFTWARE\AMD\CN" /v "UA_Enabled" /f
Reg.exe delete "HKLM\SOFTWARE\AMD\CN" /v "Benchmark" /f
Reg.exe delete "HKLM\SOFTWARE\AMD\CN" /v "Prelodeleteelay" /f
Reg.exe delete "HKLM\SOFTWARE\AMD\CN" /v "Unlodeleteelay" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableFBCForFullScreenApp" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableFBCSupport" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableEarlySamuInit" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ActivityTarget" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNFeatureEnable" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GCOOPTION_DisableGPIOPowerSaveMode" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_AllGraphicLevel_DownHyst" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_AllGraphicLevel_UpHyst" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNFeatureEnable" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_MaxUVDSessions" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalAllowDirectMemoryAccessTrig" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalAllowDPrefSwitchingForGLSync" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "WmAgpMaxIdleClk" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_MCLKStutterModeThreshold" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TVEnableOverscan" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "MLF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "EQAA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PowerState" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AreaAniso_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SurfaceFormatReplacements_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoType_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceTripleBuffering" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceTripleBuffering_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureLod_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TruformMode_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "LodAdj" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "NoOSPowerOptions" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoType" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisotropyOptimise" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TrilinearOptimise" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureLod" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TruformMode_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_SET" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_SET" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SurfaceFormatReplacements" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ZFormats_NA" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PowerState" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiStuttering" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TurboSync" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "HighQualityAF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNExMaxACTimingTuningLevel" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag\UMD" /v "FlipQueueSize" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag\UMD" /v "Main3D" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag\UMD" /v "Main3D_DEF" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag\UMD" /v "Main3D_SET" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "VSyncControl" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /f
REM ; related to record
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableeRecord" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_SDIEnable" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAspmSWL1" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ForcePcieLinkSpeed" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_GameManagerSupport" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_10BitMode" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1SS" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSamuBypassMode" /f
REM ; Load Balancing Per Watt
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableLBPWSupport" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnablePllOffInL1" /f
REM ; Related to Intel SpeedStep Technology
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnablePPSMSupport" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSpreadSpectrum" /f
REM ; c.f https://docs.nvidia.com/gameworks/content/developertools/desktop/timeout_detection_recovery.htm
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_AllowTDRAfterECC" /f
REM ; related to record
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DVRSupport" /f
REM ; related to vm
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableDceVmSupport" /f
REM ; HDMI Feature
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableEDIDManagementSupport" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableEventLog" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableHWSHighPriorityQueue" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableSDMAPaging" /f
REM ; c.f https://steemit.com/virtualbox/@benjamin-u4/fr-guide-qu-est-ce-que-amd-v-amd-svm-pourquoi-et-comment-l-activer
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableSVMSupport" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FramePacingSupport" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_UseBestGPUPowerOption" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MobileServerEnabled" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MobileServerRemotePlayEnabled" /f
REM ; related to hdmi
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalDisableHDCP" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalDisableStutter" /f
REM ; related to hdmi
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalEnableHDMI20" /f
REM ; c.f https://en.wikipedia.org/wiki/Bit_manipulation_instruction_set
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalForceAbmEnable" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalForceMaxDisplayClock" /f
REM ; related to display port
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalOptimizeEdpLinkRate" /f
REM ; c.f https://01.org/linuxgraphics/gfx-docs/drm/ch04s02.html#:~:text=PSR%20feature%20allows%20the%20display,)%20and%20Panel%20(sink).
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalPSRFeatureEnable" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAspmL0s" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAspmL1" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePllOffInL1" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSamuClockGating" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSamuLightSleep" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableGPUVirtualizationFeature" /f
REM ; c.f https://www.amd.com/fr/technologies/blockchain
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_BlockchainSupport" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_ChillEnabled" /f
REM ; c.f https://docs.microsoft.com/en-us/windows-hardware/drivers/display/gdi-hardware-acceleration
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableGDIAcceleration" /f
REM ; related to vm
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_IoMmuGpuIsolation" /f
REM ; c.f https://www.phoronix.com/scan.php?page=news_item&px=AMDGPU-DC-Seamless-Boot
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableSeamlessBoot" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_IsGamingDriver" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_RadeonBoostEnabled" /f
REM ; amd software
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_CCCNextEnabled" /f
REM ; c.f https://www.amd.com/fr/technologies/radeon-wattman
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_DisableAutoWattman" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_DisableLightSleep" /f
Reg.exe delete "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /f
::AMD Registry Location
for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /s /v "DriverDesc"^| findstr "HKEY AMD ATI"') do if /i "%%i" neq "DriverDesc" (set "REGPATH_AMD=%%i")
::AMD Tweaks
Reg delete "%REGPATH_AMD%" /v "3D_Refresh_Rate_Override_DEF" /f
Reg delete "%REGPATH_AMD%" /v "3to2Pulldown_NA" /f
Reg delete "%REGPATH_AMD%" /v "AAF_NA" /f
Reg delete "%REGPATH_AMD%" /v "Adaptive De-interlacing" /f
Reg delete "%REGPATH_AMD%" /v "AllowRSOverlay" /f
Reg delete "%REGPATH_AMD%" /v "AllowSkins" /f
Reg delete "%REGPATH_AMD%" /v "AllowSnapshot" /f
Reg delete "%REGPATH_AMD%" /v "AllowSubscription" /f
Reg delete "%REGPATH_AMD%" /v "AntiAlias_NA" /f
Reg delete "%REGPATH_AMD%" /v "AreaAniso_NA" /f
Reg delete "%REGPATH_AMD%" /v "ASTT_NA" /f
Reg delete "%REGPATH_AMD%" /v "AutoColorDepthReduction_NA" /f
Reg delete "%REGPATH_AMD%" /v "DisableSAMUPowerGating" /f
Reg delete "%REGPATH_AMD%" /v "DisableUVDPowerGatingDynamic" /f
Reg delete "%REGPATH_AMD%" /v "DisableVCEPowerGating" /f
Reg delete "%REGPATH_AMD%" /v "EnableAspmL0s" /f
Reg delete "%REGPATH_AMD%" /v "EnableAspmL1" /f
Reg delete "%REGPATH_AMD%" /v "EnableUlps" /f
Reg delete "%REGPATH_AMD%" /v "EnableUlps_NA" /f
Reg delete "%REGPATH_AMD%" /v "KMD_DeLagEnabled" /f
Reg delete "%REGPATH_AMD%" /v "KMD_FRTEnabled" /f
Reg delete "%REGPATH_AMD%" /v "DisableDMACopy" /f
Reg delete "%REGPATH_AMD%" /v "DisableBlockWrite" /f
Reg delete "%REGPATH_AMD%" /v "StutterMode" /f
Reg delete "%REGPATH_AMD%" /v "EnableUlps" /f
Reg delete "%REGPATH_AMD%" /v "PP_SclkDeepSleepDisable" /f
Reg delete "%REGPATH_AMD%" /v "PP_ThermalAutoThrottlingEnable" /f
Reg delete "%REGPATH_AMD%" /v "DisableDrmdmaPowerGating" /f
Reg delete "%REGPATH_AMD%" /v "KMD_EnableComputePreemption" /f
Reg delete "%REGPATH_AMD%\UMD" /v "Main3D_DEF" /f
Reg delete "%REGPATH_AMD%\UMD" /v "Main3D" /f
Reg delete "%REGPATH_AMD%\UMD" /v "FlipQueueSize" /f
Reg delete "%REGPATH_AMD%\UMD" /v "ShaderCache" /f
Reg delete "%REGPATH_AMD%\UMD" /v "Tessellation_OPTION" /f
Reg delete "%REGPATH_AMD%\UMD" /v "Tessellation" /f
Reg delete "%REGPATH_AMD%\UMD" /v "VSyncControl" /f
Reg delete "%REGPATH_AMD%\UMD" /v "TFQ" /f
Reg delete "%REGPATH_AMD%\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /f
Goto ENDRGPU

:RNRO
cls
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /f
Reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /f
Reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /f
Reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /f
Reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /f
Reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /f
Reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /f
Reg delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /f
Reg delete "HKCU\Software\NVIDIA Corporation\Global\NVTweak\Devices\509901423-0\Color" /v "NvCplUseColorCorrection" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PlatformSupportMiracast" /t Reg_DWORD /d "1" /f
for /f %%a in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "NVIDIA" ^| findstr "HKEY"') do (
Reg delete "%%a" /v "EnableTiledDisplay" /f
Reg delete "%%a" /v "TCCSupported" /f
)
for /f %%i in ('Reg query "HKLM\System\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "NVIDIA" ^| findstr "HKEY"') do (
Reg delete "%%i" /v "DisableDynamicPstate" /f >nul 2>&1
)
Reg add "HKLM\SYSTEM\ControlSet001\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "AllowDeepCStates" /t REG_DWORD /d "1" /f
goto ENDRGPU

:RNUSS
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "0" /f
Goto ENDRGPU

:RNVTelemetry
cls
SCHTASKS /CHANGE /ENABLE /TN "\NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /F
SCHTASKS /CHANGE /ENABLE /TN "\NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /F
SCHTASKS /CHANGE /ENABLE /TN "\NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /F
NET START "NvTelemetryContainer"
SC CONFIG "NvTelemetryContainer" START= AUTO
Reg delete "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /f
Reg delete "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /f
Reg delete "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /f
Reg delete "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /f
schtasks /change /enable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /enable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /enable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /enable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
netsh advfirewall firewall delete rule name="Block NVIDIA Telemetry" > nul
Goto ENDRGPU

:ENHDCP
cls
for /f %%a in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "NVIDIA" ^| findstr "HKEY"') do (
Reg add "%%a" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "0" /f
)
goto ENDRGPU

:RTPSS
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                                   What kind of GPU do you have?
echo.
echo                                     Jaki rodzaj GPU posiadasz?
echo.
echo                                           Nvidia / AMD
echo.
echo.
set /p RGPU=
if %RGPU%== nvidia goto rnvidia
if %RGPU%== Nvidia goto rnvidia
if %RGPU%== NVIDIA goto rnvidia
if %RGPU%== Amd goto ramd
if %RGPU%== amd goto ramd
if %RGPU%== AMD goto ramd
if %RGPU%== x goto RGPU2
if %RGPU%== X goto RGPU2
cls
goto RTPSS

:rnvidia
cls
REM ;NVIDIA Driver Thread Priority
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /f
goto ENDRGPU

:ramd
cls
REM ;AMD Driver Thread Priority
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdap\Parameters" /v "ThreadPriority" /f
goto ENDRGPU

:ENDRGPU
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto RGPU2

:INVS
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/838115755957420063/871832386411839559/nvidiaProfileInspector.exe" -OutFile "%temp%\nvidiaProfileInspector.exe"
goto nimport

:nimport
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/838115755957420063/871832384029474856/Opline.nip" -OutFile "%temp%\Opline.nip"
cd %temp%
nvidiaProfileInspector.exe "Opline.nip"
del nvidiaProfileInspector.exe
del Opline.nip
goto ENDGPU

:NGPU
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t Reg_DWORD /d "1" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t Reg_DWORD /d "1" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t Reg_DWORD /d "0" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t Reg_DWORD /d "1" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t Reg_DWORD /d "0" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t Reg_DWORD /d "0" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t Reg_DWORD /d "1" /f
Reg add "HKCU\Software\NVIDIA Corporation\Global\NVTweak\Devices\509901423-0\Color" /v "NvCplUseColorCorrection" /t Reg_DWORD /d "0" /f
Reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PlatformSupportMiracast" /t Reg_DWORD /d "0" /f
for /f %%a in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "NVIDIA" ^| findstr "HKEY"') do (
Reg add "%%a" /v "EnableTiledDisplay" /t REG_DWORD /d "0" /f
Reg add "%%a" /v "TCCSupported" /t REG_DWORD /d "0" /f
)
for /f %%i in ('Reg query "HKLM\System\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "NVIDIA" ^| findstr "HKEY"') do (
Reg add "%%i" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f >nul 2>&1
)
Reg add "HKLM\SYSTEM\ControlSet001\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "AllowDeepCStates" /t REG_DWORD /d "0" /f
goto ENDGPU

:NUSS
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f
Goto ENDGPU2

:NVTelemetry
cls
SCHTASKS /END /TN "\NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
SCHTASKS /CHANGE /DISABLE /TN "\NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /F
SCHTASKS /END /TN "\NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
SCHTASKS /CHANGE /DISABLE /TN "\NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /F
SCHTASKS /END /TN "\NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
SCHTASKS /CHANGE /DISABLE /TN "\NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /F
NET STOP "NvTelemetryContainer"
SC CONFIG "NvTelemetryContainer" START= DISABLED
NET STOP "NvTelemetryContainer"
SC CONFIG "NvTelemetryContainer" START= DISABLED
Reg add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d 0 /f
Reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d 0 /f
Reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d 0 /f
Reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d 0 /f
Reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
netsh advfirewall firewall add rule name="Block NVIDIA Telemetry" dir=in action=block remoteip=8.36.80.197,8.36.80.224,8.36.80.252,8.36.113.118,8.36.113.141,8.36.80.230,8.36.80.231,8.36.113.126,8.36.80.195,8.36.80.217,8.36.80.237,8.36.80.246,8.36.113.116,8.36.113.139,8.36.80.244,216.228.121.209 enable=yes > nul 
Goto ENDGPU

:DNHDCP
cls
for /f %%a in ('Reg query "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /t REG_SZ /s /e /f "NVIDIA" ^| findstr "HKEY"') do (
Reg add "%%a" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f
)
goto ENDGPU

:IMSI
cls
goto install

:install
TITLE Downloading the installer for MSI Afterburner... - Pobieranie instalatora dla MSI Afterburner...
powershell Invoke-WebRequest "https://files03.tchspt.com/temp/MSIAfterburnerSetup464.exe" -OutFile "%temp%\MSIAfterburnerSetup464.exe"
%temp%\MSIAfterburnerSetup464.exe
goto skin

:skin
TITLE Importing the KBoost skin... - Importowanie skorki KBoost...
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                Enter the path of the folder where MSI Afterburner is installed
echo.
echo              Wprowadz sciezke folderu w ktorym jest zainstalowany MSI Afterburner
echo.
set /p MSI=
cls
timeout /t 2
cls
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/KBoost/defaultX.uxf" -OutFile "%temp%\defaultX.uxf"
move "%temp%\defaultX.uxf" "%MSI%\Skins\defaultX.uxf"
cd %temp%
del MSIAfterburnerSetup464.exe
title Opline Software [LITE]
goto ENDGPU

:RGPU
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GI_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Denoise_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Detail_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "SplitScreen_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StaticGamma_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Gamma_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EQAA_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MLF_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "SurfaceFormatReplacements_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TFQ_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TextureLod_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TestOnceRequest_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoTuneRequest_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "CameraShakeMotionDetect_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MosquitoNoiseRemoval_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Deblocking_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourDesktopGamma_DEF" /t REG_SZ /d "1.0 1.0 1.0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourDesktopBrightness_DEF" /t REG_SZ /d "1.0 1.0 1.0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourDesktopContrast_DEF" /t REG_SZ /d "1.0 1.0 1.0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourFullscreenGamma_DEF" /t REG_SZ /d "1.0 1.0 1.0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourFullscreenBrightness_DEF" /t REG_SZ /d "1.0 1.0 1.0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColourFullscreenContrast_DEF" /t REG_SZ /d "1.0 1.0 1.0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ColorVibrance_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DynamicRange_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Fleshtone_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DALR6 CRT_MaxModeInfo" /t REG_BINARY /d "0000000040060000b004000000000000A0000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3to2Pulldown_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TemporalAAMultiplier_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DynamicContrast_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DemoMode_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TheaterMode_NA" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DALNonStandardModesBCD1" /t REG_BINARY /d "13600768000000601360076800000075136007680000008513660768000000601366076800000075136607680000008508000480000000601024060000000060" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DALNonStandardModesBCD2" /t REG_BINARY /d "128007680000006014001050000000602502135100000070192012000000007014001050000000703840216000000070" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DALNonStandardModesBCD3" /t REG_BINARY /d "12801024000000701152086400000085136007680000008513600768000000851360102400000085136010240000008516001200000000732306129700000073064004800000007308000600000000701152086400000070192012000000007021331200000000704096230400000070" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DALNonStandardModesBCD4" /t REG_BINARY /d "120010240000000012800768000000851280096000000085160012800000008519201080000000851920120000008517921344000000841800144000000077185613920000007919201080000000702560144000000070204811520000007038402160000000603840216000000070" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FijiPm" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_MaxFrameRateRequested" /t REG_DWORD /d "70" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_PrimitiveShaderSupport" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNExMaxACTimingTuningLevel" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION_DEF" /t REG_SZ /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_DEF" /t REG_SZ /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation" /t REG_BINARY /d "3800" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_SET" /t REG_BINARY /d "31203220342036203820313620333220363400" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "33000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AdaptiveAAMethod" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "HighQualityAF" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\AMD\AMDAnalytics" /v "AnalyticsAccepted" /t REG_SZ /d "false" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "ChillLevelDefault" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "MaxFramerateDefault" /t REG_DWORD /d "70" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "MinFramerateDefault" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "MaxFramerateRange" /t REG_DWORD /d "75" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "MinFramerateRange" /t REG_DWORD /d "29" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "ProfileEnableDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\AMD\Chill" /v "GlobalEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\AMD\CN" /v "UA_Enabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\AMD\CN" /v "Benchmark" /t REG_SZ /d "false" /f
Reg.exe add "HKLM\SOFTWARE\AMD\CN" /v "PreloadDelay" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SOFTWARE\AMD\CN" /v "UnloadDelay" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableFBCForFullScreenApp" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableFBCSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableEarlySamuInit" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ActivityTarget" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNFeatureEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GCOOPTION_DisableGPIOPowerSaveMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_AllGraphicLevel_DownHyst" /t REG_DWORD /d "20" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_AllGraphicLevel_UpHyst" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNFeatureEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_MaxUVDSessions" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalAllowDirectMemoryAccessTrig" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalAllowDPrefSwitchingForGLSync" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "WmAgpMaxIdleClk" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_MCLKStutterModeThreshold" /t REG_DWORD /d "4096" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TVEnableOverscan" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "MLF" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "EQAA" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AreaAniso_DEF" /t REG_SZ /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SurfaceFormatReplacements_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoType_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree_DEF" /t REG_SZ /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceTripleBuffering" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceTripleBuffering_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureLod_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TruformMode_DEF" /t REG_SZ /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "LodAdj" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "NoOSPowerOptions" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoType" /t REG_BINARY /d "32000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisotropyOptimise" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TrilinearOptimise" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree" /t REG_BINARY /d "3400" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureLod" /t REG_BINARY /d "31000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt" /t REG_BINARY /d "31000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TruformMode_NA" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_SET" /t REG_BINARY /d "302031203220332034203500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_SET" /t REG_BINARY /d "3020313620323400" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SurfaceFormatReplacements" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ_DEF" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ZFormats_NA" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiStuttering" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TurboSync" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "HighQualityAF" /t REG_BINARY /d "3300" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ODNExMaxACTimingTuningLevel" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag\UMD" /v "FlipQueueSize" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag\UMD" /v "Main3D" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag\UMD" /v "Main3D_DEF" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdag\UMD" /v "Main3D_SET" /t REG_BINARY /d "302031203220332034203500" /f
REM ; related to record
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableeRecord" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_SDIEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAspmSWL1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ForcePcieLinkSpeed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_GameManagerSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_10BitMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1SS" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSamuBypassMode" /t REG_DWORD /d "1" /f
REM ; Load Balancing Per Watt
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableLBPWSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnablePllOffInL1" /t REG_DWORD /d "0" /f
REM ; Related to Intel SpeedStep Technology
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnablePPSMSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSpreadSpectrum" /t REG_DWORD /d "0" /f
REM ; c.f https://docs.nvidia.com/gameworks/content/developertools/desktop/timeout_detection_recovery.htm
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_AllowTDRAfterECC" /t REG_DWORD /d "1" /f
REM ; related to record
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DVRSupport" /t REG_DWORD /d "0" /f
REM ; related to vm
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableDceVmSupport" /t REG_DWORD /d "0" /f
REM ; HDMI Feature
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableEDIDManagementSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableEventLog" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableHWSHighPriorityQueue" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableSDMAPaging" /t REG_DWORD /d "1" /f
REM ; c.f https://steemit.com/virtualbox/@benjamin-u4/fr-guide-qu-est-ce-que-amd-v-amd-svm-pourquoi-et-comment-l-activer
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableSVMSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FramePacingSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_UseBestGPUPowerOption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MobileServerEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MobileServerRemotePlayEnabled" /t REG_DWORD /d "0" /f
REM ; related to hdmi
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalDisableHDCP" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalDisableStutter" /t REG_DWORD /d "1" /f
REM ; related to hdmi
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalEnableHDMI20" /t REG_DWORD /d "0" /f
REM ; c.f https://en.wikipedia.org/wiki/Bit_manipulation_instruction_set
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalForceAbmEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalForceMaxDisplayClock" /t REG_DWORD /d "1" /f
REM ; related to display port
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalOptimizeEdpLinkRate" /t REG_DWORD /d "1" /f
REM ; c.f https://01.org/linuxgraphics/gfx-docs/drm/ch04s02.html#:~:text=PSR%20feature%20allows%20the%20display,)%20and%20Panel%20(sink).
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalPSRFeatureEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAspmL0s" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAspmL1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePllOffInL1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSamuClockGating" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSamuLightSleep" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableGPUVirtualizationFeature" /t REG_DWORD /d "0" /f
REM ; c.f https://www.amd.com/fr/technologies/blockchain
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_BlockchainSupport" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_ChillEnabled" /t REG_DWORD /d "1" /f
REM ; c.f https://docs.microsoft.com/en-us/windows-hardware/drivers/display/gdi-hardware-acceleration
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableGDIAcceleration" /t REG_DWORD /d "1" /f
REM ; related to vm
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_IoMmuGpuIsolation" /t REG_DWORD /d "0" /f
REM ; c.f https://www.phoronix.com/scan.php?page=news_item&px=AMDGPU-DC-Seamless-Boot
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableSeamlessBoot" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_IsGamingDriver" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_RadeonBoostEnabled" /t REG_DWORD /d "1" /f
REM ; amd software
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_CCCNextEnabled" /t REG_DWORD /d "0" /f
REM ; c.f https://www.amd.com/fr/technologies/radeon-wattman
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_DisableAutoWattman" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_DisableLightSleep" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "VSyncControl" /t REG_BINARY /d "3000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f
::AMD Registry Location
for /f %%i in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}" /s /v "DriverDesc"^| findstr "HKEY AMD ATI"') do if /i "%%i" neq "DriverDesc" (set "REGPATH_AMD=%%i")
::AMD Tweaks
Reg add "%REGPATH_AMD%" /v "3D_Refresh_Rate_Override_DEF" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "3to2Pulldown_NA" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "AAF_NA" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "Adaptive De-interlacing" /t Reg_DWORD /d "1" /f
Reg add "%REGPATH_AMD%" /v "AllowRSOverlay" /t Reg_SZ /d "false" /f
Reg add "%REGPATH_AMD%" /v "AllowSkins" /t Reg_SZ /d "false" /f
Reg add "%REGPATH_AMD%" /v "AllowSnapshot" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "AllowSubscription" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "AntiAlias_NA" /t Reg_SZ /d "0" /f
Reg add "%REGPATH_AMD%" /v "AreaAniso_NA" /t Reg_SZ /d "0" /f
Reg add "%REGPATH_AMD%" /v "ASTT_NA" /t Reg_SZ /d "0" /f
Reg add "%REGPATH_AMD%" /v "AutoColorDepthReduction_NA" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "DisableSAMUPowerGating" /t Reg_DWORD /d "1" /f
Reg add "%REGPATH_AMD%" /v "DisableUVDPowerGatingDynamic" /t Reg_DWORD /d "1" /f
Reg add "%REGPATH_AMD%" /v "DisableVCEPowerGating" /t Reg_DWORD /d "1" /f
Reg add "%REGPATH_AMD%" /v "EnableAspmL0s" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "EnableAspmL1" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "EnableUlps" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "EnableUlps_NA" /t Reg_SZ /d "0" /f
Reg add "%REGPATH_AMD%" /v "KMD_DeLagEnabled" /t Reg_DWORD /d "1" /f
Reg add "%REGPATH_AMD%" /v "KMD_FRTEnabled" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "DisableDMACopy" /t Reg_DWORD /d "1" /f
Reg add "%REGPATH_AMD%" /v "DisableBlockWrite" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "StutterMode" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "EnableUlps" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "PP_SclkDeepSleepDisable" /t Reg_DWORD /d "1" /f
Reg add "%REGPATH_AMD%" /v "PP_ThermalAutoThrottlingEnable" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%" /v "DisableDrmdmaPowerGating" /t Reg_DWORD /d "1" /f
Reg add "%REGPATH_AMD%" /v "KMD_EnableComputePreemption" /t Reg_DWORD /d "0" /f
Reg add "%REGPATH_AMD%\UMD" /v "Main3D_DEF" /t Reg_SZ /d "1" /f
Reg add "%REGPATH_AMD%\UMD" /v "Main3D" /t Reg_BINARY /d "3100" /f
Reg add "%REGPATH_AMD%\UMD" /v "FlipQueueSize" /t Reg_BINARY /d "3100" /f
Reg add "%REGPATH_AMD%\UMD" /v "ShaderCache" /t Reg_BINARY /d "3200" /f
Reg add "%REGPATH_AMD%\UMD" /v "Tessellation_OPTION" /t Reg_BINARY /d "3200" /f
Reg add "%REGPATH_AMD%\UMD" /v "Tessellation" /t Reg_BINARY /d "3100" /f
Reg add "%REGPATH_AMD%\UMD" /v "VSyncControl" /t Reg_BINARY /d "3000" /f
Reg add "%REGPATH_AMD%\UMD" /v "TFQ" /t Reg_BINARY /d "3200" /f
Reg add "%REGPATH_AMD%\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t Reg_BINARY /d "0100000001000000" /f
Goto ENDGPU

:ENDGPU
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto GPU

:ENDGPU2
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished, now you need to change the SILK option to Off in the Control Panel from Nvidia, click on Apply and it's ready. - Skonczone, teraz musisz w Panerze Sterowania od Nvidii zmienic opcje SILK na Off, kliknac w Zastosuj i gotowe.
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto GPU

:OGPU
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                                    What kind of GPU do you have?
echo.
echo                                     Jaki rodzaj GPU posiadasz?
echo.
echo                                            Nvidia / AMD
echo.
echo.
set /p GPU=
if %GPU%== nvidia goto nvidia
if %GPU%== Nvidia goto nvidia
if %GPU%== NVIDIA goto nvidia
if %GPU%== Amd goto amd
if %GPU%== amd goto amd
if %GPU%== AMD goto amd
if %GPU%== X goto GPU
if %GPU%== x goto GPU
cls
goto OGPU

:nvidia
cls
REM ;NVIDIA Driver Thread Priority
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
goto ENDGPU

:amd
cls
REM ;AMD Driver Thread Priority
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\amdkmdap\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
goto ENDGPU

:BOOT
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Boot Logo" "   [+]  Boot Messages" "   [+]  Spinning Animation" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto B67
if %ERRORLEVEL% == 2 goto B68
if %ERRORLEVEL% == 3 goto B69
if %ERRORLEVEL% == 4 goto Others

:B67
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Disable" "   [+]  Enable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto D67
if %ERRORLEVEL% == 2 goto E67
if %ERRORLEVEL% == 3 goto BOOT

:D67
cls
bcdedit /set {globalsettings} custom:16000067 true
Goto END5

:E67
cls
bcdedit /set {globalsettings} custom:16000067 false
Goto END5

:B68
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Disable" "   [+]  Enable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto D68
if %ERRORLEVEL% == 2 goto E68
if %ERRORLEVEL% == 3 goto BOOT

:D68
cls
bcdedit /set {globalsettings} custom:16000068 true
Goto END5

:E68
cls
bcdedit /set {globalsettings} custom:16000068 false
Goto END5

:B69
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Disable" "   [+]  Enable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto D69
if %ERRORLEVEL% == 2 goto E69
if %ERRORLEVEL% == 3 goto BOOT

:D69
cls
bcdedit /set {globalsettings} custom:16000069 true
Goto END5

:E69
cls
bcdedit /set {globalsettings} custom:16000069 false
Goto END5

:END5
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto BOOT

:CPU
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                                  How many CPU cores do you have?
echo.
echo                                    Ile masz rdzeni procesora?
echo.
set /p CPU=
if %CPU%== RESET goto RESETCPU
if %CPU%== reset goto RESETCPU
if %CPU%== Reset goto RESETCPU
if %CPU%== X goto OplineMenu
if %CPU%== x goto OplineMenu
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "RssBaseCpu" /t REG_DWORD /d "%CPU%" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "MaxNumRssCpus" /t REG_DWORD /d "%CPU%" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto CPU

:RESETCPU
cls
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "RssBaseCpu" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "MaxNumRssCpus" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto CPU

:GameBoost
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Minecraft Settings" "   [+]  CSGO Settings" "   [+]  Valorant Settings" "   [+]  Fortnite Settings" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto MC
if %ERRORLEVEL% == 2 goto CSGO
if %ERRORLEVEL% == 3 goto Valorant
if %ERRORLEVEL% == 4 goto Fortnite
if %ERRORLEVEL% == 5 goto OplineMenu

:MC
cls
mkdir %appdata%\.minecraft\
cd %appdata%\.minecraft\
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Tweak Minecraft Settings for 1.7.10" "   [+]  Tweak Minecraft Settings for 1.8.9" "   [+]  Tweak Minecraft Settings for 1.16" "   [+]  Tweak Lunar Client Settings" "   [+]  Tweak Badlion Client Settings" "   [+]  Tweak Blazing Pack Settings" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto 1.7.10
if %ERRORLEVEL% == 2 goto 1.8.9
if %ERRORLEVEL% == 3 goto 1.16
if %ERRORLEVEL% == 4 goto LC
if %ERRORLEVEL% == 5 goto BC
if %ERRORLEVEL% == 6 goto BP
if %ERRORLEVEL% == 7 goto GameBoost

:BC
cls
mkdir BLClient-Mod-Profiles
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837790814598856795/FPS.json" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\BLClient-Mod-Profiles\FPS.json"
goto mcend3


:LC
cls
mkdir C:\Users\%username%\.lunarclient\
mkdir C:\Users\%username%\.lunarclient\settings\
mkdir C:\Users\%username%\.lunarclient\settings\game\
mkdir C:\Users\%username%\.lunarclient\settings\game\Arena PvP\
mkdir C:\Users\%username%\.lunarclient\settings\game\Default\
mkdir C:\Users\%username%\.lunarclient\settings\game\Hypixel Skyblock\
mkdir C:\Users\%username%\.lunarclient\settings\game\UHC\
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837631180668796928/launcher.json" -OutFile "C:\Users\%username%\.lunarclient\settings\launcher.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837631239137001502/features.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\features.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837631242819862569/language.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\language.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837631244707561482/launcher_lc_msa.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\launcher_lc_msa.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837631246498005012/muted_users.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\muted_users.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837631247650914345/profile_manager.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\profile_manager.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837631249014325258/rule-features.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\rule-features.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837631250915000370/waypoints.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\waypoints.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837633222132629546/controls.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Arena PvP\controls.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837633223660011530/general.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Arena PvP\general.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837633225353330718/mods.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Arena PvP\mods.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837633226394435614/performance.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Arena PvP\performance.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837633471747981332/controls.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Default\controls.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837633473057259530/general.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Default\general.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837633476617437184/mods.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Default\mods.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837633475929440266/performance.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Default\performance.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837633477611356160/staff_mods.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Default\staff_mods.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837639561864937492/controls.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Hypixel Skyblock\controls.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837639563307909130/general.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Hypixel Skyblock\general.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837639564448759808/mods.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Hypixel Skyblock\mods.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837639565148684318/performance.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\Hypixel Skyblock\performance.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837639632858513448/controls.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\UHC\controls.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837639634255216640/general.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\UHC\general.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837639635433160754/mods.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\UHC\mods.json"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/837639636457095248/performance.json" -OutFile "C:\Users\%username%\.lunarclient\settings\game\UHC\performance.json"
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/optionsLC.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsLC.txt"
goto mcend2


:BP
cls
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/optionsbp.dat" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsbp.dat"
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/options_bp.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\options_bp.txt"
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/Opline/optionsofbp.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsofbp.txt"
goto mcend2

:1.7.10
cls
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/MCV17/options.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\options.txt"
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/MCV17/optionsof.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsof.txt"
goto mcend

:1.8.9
cls
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/MCV18/options.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\options.txt"
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/MCV18/optionsof.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsof.txt"
goto mcend

:1.16
cls
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/MCV116/options.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\options.txt"
powershell Invoke-WebRequest "https://github.com/Smolich404/DownloadFilesToOpline/releases/download/MCV116/optionsof.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsof.txt"
goto mcend

:mcend
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto MC

:mcend2
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto MC

:mcend3
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Now you go to the main Badlion Client menu, click on Mods, click on the Folder Profile icon, and in Profiles you see the FPS file, click it twice and it's ready. - Teraz przechodzisz do glownego menu Badlion Client, klikasz w Mods, klikasz w ikone Profil Folderu, i w Profiles ci sie wyswietla plik FPS klikasz na niego dwa razy i gotowe.
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto MC

:fail
cls
goto MC

:CSGO
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo               Enter the path of the folder where Steam is installed with userdata
echo                                   or with steamapps example:
echo                     D:\Programy\Steam\userdata\248150227\730\local\cfg
echo                                               or
echo           D:\Programy\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg
echo.
echo          Wpisz sciezke polozenia folderu na ktorym jest zainstalowany Steam z userdata
echo                                   lub z steamapps przyklad: 
echo                     D:\Programy\Steam\userdata\248150227\730\local\cfg
echo                                               lub
echo           D:\Programy\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\cfg                             
echo.
set /p CS=
if %CS%== X goto GameBoost
if %CS%== x goto GameBoost
goto csinstall

:csinstall
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/838115755957420063/838152920041521152/trening.cfg" -OutFile "%CS%\trening.cfg"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/838115755957420063/838152921777438770/treaninglite.cfg" -OutFile "%CS%\treaninglite.cfg"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/838115755957420063/838152923150024742/gaben.cfg" -OutFile "%CS%\gaben.cfg"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/838115755957420063/838152923954413588/autoexec.cfg" -OutFile "%CS%\autoexec.cfg"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/838115755957420063/838152925783785543/gitattributes" -OutFile "%CS%\gitattributes"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/838115755957420063/838152927805702174/config.cfg" -OutFile "%CS%\config.cfg"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/838115755957420063/838205334849060914/video.txt" -OutFile "%CS%\video.txt"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/838115755957420063/838205338150371379/videodefaults.txt" -OutFile "%CS%\videodefaults.txt"
goto csend

:csend
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto GameBoost

:Valorant
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                Enter the path of the folder where Valorant is installed example:             
echo %AppData%\Local\VALORANT\Saved\Config\d789217-4rwq-3784-5n643-f1hk14289789e\Windows
echo.
echo         Wpisz sciezke polozenia folderu na ktorym jest zainstalowany Valorant przyklad: 
echo %AppData%\Local\VALORANT\Saved\Config\d789217-4rwq-3784-5n643-f1hk14289789e\Windows                   
echo.
set /p VALO=
if %VALO%== X goto GameBoost
if %VALO%== x goto GameBoost
goto svalorant

:svalorant
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  1080p Settings" "   [+]  720p Settings" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto valohigh
if %ERRORLEVEL% == 2 goto valolow
if %ERRORLEVEL% == 3 goto GameBoost

:valohigh
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Low Settings" "   [+]  Lower Settings" "   [+]  Lowest Settings" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto high
if %ERRORLEVEL% == 2 goto higher
if %ERRORLEVEL% == 3 goto highest
if %ERRORLEVEL% == 4 goto svalorant

:high
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/855146802898010152/GameUserSettings.ini" -OutFile "%VALO%\GameUserSettings.ini"
goto endvalo

:higher
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/855146852914561094/GameUserSettings.ini" -OutFile "%VALO%\GameUserSettings.ini"
goto endvalo

:highest
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/855146884875157564/GameUserSettings.ini" -OutFile "%VALO%\GameUserSettings.ini"
goto endvalo

:endvalo
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto valohigh

:valolow
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Low Settings" "   [+]  Lower Settings" "   [+]  Lowest Settings" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto low
if %ERRORLEVEL% == 2 goto lower
if %ERRORLEVEL% == 3 goto lowest
if %ERRORLEVEL% == 4 goto svalorant

:low
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/853401169241571399/GameUserSettings.ini" -OutFile "%VALO%\GameUserSettings.ini"
goto endvalo2

:lower
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/853401246571692082/GameUserSettings.ini" -OutFile "%VALO%\GameUserSettings.ini"
goto endvalo2

:lowest
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/853401318046433290/GameUserSettings.ini" -OutFile "%VALO%\GameUserSettings.ini"
goto endvalo2

:endvalo2
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto valolow

:Fortnite
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                 Enter the path of the folder where Fortnite is installed example:             
echo         %AppData%\Local\FortniteGame\Saved\Config\WindowsClient
echo.
echo         Wpisz sciezke polozenia folderu na ktorym jest zainstalowany Fortnite przyklad: 
echo         %AppData%\Local\FortniteGame\Saved\Config\WindowsClient
echo.
set /p FORT=
if %FORT%== X goto GameBoost
if %FORT%== x goto GameBoost
goto sfortnite

:sfortnite
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  1080p Settings" "   [+]  720p Settings" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto forthigh
if %ERRORLEVEL% == 2 goto fortlow
if %ERRORLEVEL% == 3 goto GameBoost

:forthigh
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Low Settings" "   [+]  Lower Settings" "   [+]  Lowest Settings" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto high
if %ERRORLEVEL% == 2 goto higher
if %ERRORLEVEL% == 3 goto highest
if %ERRORLEVEL% == 4 goto sfortnite

:high
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/855163204783308830/GameUserSettings.ini" -OutFile "%FORT%\GameUserSettings.ini"
goto endfort

:higher
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/855163271183335494/GameUserSettings.ini" -OutFile "%FORT%\GameUserSettings.ini"
goto endfort

:highest
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/855163324744204349/GameUserSettings.ini" -OutFile "%FORT%\GameUserSettings.ini"
goto endfort

:endfort
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto forthigh

:fortlow
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Low Settings" "   [+]  Lower Settings" "   [+]  Lowest Settings" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto low
if %ERRORLEVEL% == 2 goto lower
if %ERRORLEVEL% == 3 goto lowest
if %ERRORLEVEL% == 4 goto sfortnite

:low
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/855163780471980072/GameUserSettings.ini" -OutFile "%FORT%\GameUserSettings.ini"
goto endfort2

:lower
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/855164314842955796/GameUserSettings.ini" -OutFile "%FORT%\GameUserSettings.ini"
goto endfort2

:lowest
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/855165563595653191/GameUserSettings.ini" -OutFile "%FORT%\GameUserSettings.ini"
goto endfort2

:endfort2
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto fortlow

:Internet
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Network Optimization through the Registry" "   [+]  Optimize System Mci" "   [+]  Disable Nagling" "   [+]  Netsh Settings" "   [+]  Repair Ping" "   [+]  Reset" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto NREG
if %ERRORLEVEL% == 2 goto OSMCI
if %ERRORLEVEL% == 3 goto DNagling
if %ERRORLEVEL% == 4 goto Netsh
if %ERRORLEVEL% == 5 goto Ping
if %ERRORLEVEL% == 6 goto RInternet
if %ERRORLEVEL% == 7 goto OplineMenu

:RInternet
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Reset Network Optimization through the Registry" "   [+]  Reset Optimize System Mci" "   [+]  Reset Disable Nagling" "   [+]  Reset Netsh Settings" "   [+]  Reset Repair Ping" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto RNREG
if %ERRORLEVEL% == 2 goto ROSMCI
if %ERRORLEVEL% == 3 goto RDNagling
if %ERRORLEVEL% == 4 goto RNetsh
if %ERRORLEVEL% == 5 goto RPing
if %ERRORLEVEL% == 6 goto Internet

:RNREG
cls
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "DisableTaskOffload" /f
reg delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "DisableTaskOffload" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "00000499" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "00000500" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "00002000" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "00002001" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /t REG_DWORD /d "00000002" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "00000004" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /f
reg delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPCongestionControl" /f
reg delete "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPCongestionControl" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "explorer.exe" /t REG_DWORD /d "00000004"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "explorer.exe" /t REG_DWORD /d "00000002"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "explorer.exe" /t REG_DWORD /d "00000004"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "explorer.exe" /t REG_DWORD /d "00000002"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "00000499"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "00000500"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "00002000"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "00002001"
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "explorer.exe" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "explorer.exe" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "explorer.exe" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "explorer.exe" /t REG_DWORD /d "4" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "iexplore.exe" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /f
Reg.exe delete "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "iexplore.exe" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "iexplore.exe" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "iexplore.exe" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "10" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "MaxCmds" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "MaxThreads" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "MaxCollectionCount" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "KeepConn" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "DisableBandwidthThrottling" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "Size" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "MaxMpxCt" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /f
goto endrinternet

:RPing
cls
)
for /f "usebackq" %%i in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}`) do (
Reg.exe delete %%i /v "ScanWhenAssociated" /f
)

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0002" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0003" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0004" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0005" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0006" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0007" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0000" /v "ScanWhenAssociated" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v "ScanWhenAssociated" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0002" /v "ScanWhenAssociated" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0003" /v "ScanWhenAssociated" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0004" /v "ScanWhenAssociated" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0005" /v "ScanWhenAssociated" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0006" /v "ScanWhenAssociated" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0007" /v "ScanWhenAssociated" /f
goto endrinternet

:RDNagling
cls
for /f "tokens=3*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" /f "ServiceName" /s^|findstr /i /l "ServiceName"') do (
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TCPNoDelay" /f
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpAckFrequency" /f
reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpDelAckTicks" /f
)
goto endrinternet

:ROSMCI
cls
start https://prnt.sc/1776g3u
C:\Windows\system.ini
goto endrinternet

:RNetsh
cls
netsh winsock reset catalog
netsh int ip reset c:resetlog.txt
netsh int ip reset C:\tcplog.txt
netsh int tcp set heuristics default
netsh int tcp set supplemental Internet congestionprovider=default
netsh int tcp set global initialRto=3000
netsh int tcp set global MaxSynRetransmissions=2
netsh int tcp set global autotuninglevel=default
netsh int tcp set global rss=default
netsh int tcp set global rsc=default
netsh int tcp set global chimney=default
netsh int tcp set global dca=default
netsh int tcp set global netdma=default
netsh int tcp set global ecncapability=default
netsh int tcp set global timestamps=default
netsh int tcp set global nonsackrttresiliency=default
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global rsc=enabled
netsh int tcp set global maxsynretransmissions=4
netsh int tcp set global initialRto=1000
netsh int tcp set supplemental template=custom icw=10
set supplemental congestion provider=default
netsh int tcp set global congestionprovider=default
netsh interface tcp set supplemental custom congestionprovider=default
netsh int tcp set supplemental internet congestionprovider=default
netsh int tcp set global congestionprovider=default
netsh int tcp set supplemental congestionprovider=default
netsh int tcp set global congestionprovider=default
netsh int tcp set supplemental Internet congestionprovider=default
netsh int tcp set supplemental template=internet congestionprovider=default
netsh int tcp set supplemental template=internetcustom congestionprovider=default
netsh int tcp set supplemental template=Datacenter congestionprovider=default
netsh int tcp set supplemental template=Datacentercustom congestionprovider=default
netsh interface ipv4 set subinterface "Internet" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Local Area Connection" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Internet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Local Area Connection" mtu=1500 store=persistent
powershell -command "Set-NetOffloadGlobalSetting -PacketCoalescingFilter enabled"
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh int tcp set global congestionprovider=default
powershell -command "Set-NetTCPSetting -SettingName InternetCustom -CongestionProvider Default"
netsh int tcp set supplemental Internet congestionprovider=default
powershell Set-NetTCPSetting -SettingName InternetCustom -MaxSynRetransmissions 4
powershell Set-NetTCPSetting -SettingName Internet -MaxSynRetransmissions 4
powershell Set-NetTCPSetting -SettingName DatacenterCustom -MaxSynRetransmissions 4
powershell Set-NetTCPSetting -SettingName Datacenter -MaxSynRetransmissions 4
powershell Set-NetTCPSetting -SettingName InternetCustom -NonSackRttResiliency disabled
powershell Set-NetTCPSetting -SettingName Internet -NonSackRttResiliency disabled
powershell Set-NetTCPSetting -SettingName DatacenterCustom -NonSackRttResiliency disabled
powershell Set-NetTCPSetting -SettingName Datacenter -NonSackRttResiliency disabled
powershell set-NetTCPSetting -SettingName Internet -MinRto 300
powershell set-NetTCPSetting -SettingName InternetCustom -MinRto 300
powershell set-NetTCPSetting -SettingName Datacenter -MinRto 300
powershell set-NetTCPSetting -SettingName DatacenterCustom -MinRto 300
powershell Set-NetTCPSetting -SettingName Internet -InitialRto 1000
powershell Set-NetTCPSetting -SettingName InternetCustom -InitialRto 1000
powershell Set-NetTCPSetting -SettingName Datacenter -InitialRto 1000
powershell Set-NetTCPSetting -SettingName DatacenterCustom -InitialRto 1000
powershell Set-NetTCPSetting -SettingName Internet -Timestamps Disabled
powershell Set-NetTCPSetting -SettingName InternetCustom -Timestamps Disabled
powershell Set-NetTCPSetting -SettingName Datacentercustom -Timestamps Disabled
powershell Set-NetTCPSetting -SettingName Datacenter -Timestamps Disabled
powershell Set-NetTCPSetting -SettingName Internet -EcnCapability Disabled
powershell Set-NetTCPSetting -SettingName InternetCustom -EcnCapability Disabled
powershell Set-NetTCPSetting -SettingName DatacenterCustom -EcnCapability Disabled
powershell Set-NetTCPSetting -SettingName Datacenter -EcnCapability Disabled
powershell Enable-NetAdapterLso -Name *
powershell Set-NetOffloadGlobalSetting -PacketCoalescingFilter enabled
powershell Enable-NetAdapterChecksumOffload -Name *
powershell Enable-NetAdapterRss -Name *
powershell Set-NetOffloadGlobalSetting -ReceiveSideScaling Enabled
powershell Set-NetTCPSetting -SettingName "InternetCustom" -CongestionProvider default
powershell Set-NetTCPSetting -SettingName "Internet" -CongestionProvider default
powershell Set-NetTCPSetting -SettingName "Datacentercustom" -CongestionProvider default
powershell Set-NetTCPSetting -SettingName "Datacenter" -CongestionProvider default
powershell Set-NetTCPSetting -SettingName "Internet" -AutoTuningLevelLocal normal
powershell Set-NetTCPSetting -SettingName "InternetCustom" -AutoTuningLevelLocal normal
powershell Set-NetTCPSetting -SettingName "Datacentercustom" -AutoTuningLevelLocal normal
powershell Set-NetTCPSetting -SettingName "Datacenter" -AutoTuningLevelLocal normal
powershell Set-NetTCPSetting -SettingName "InternetCustom" -ScalingHeuristics Disabled
powershell Set-NetTCPSetting -SettingName "Internet" -ScalingHeuristics Disabled
powershell Set-NetTCPSetting -SettingName "Datacentercustom" -ScalingHeuristics Disabled
powershell Set-NetTCPSetting -SettingName "Datacenter" -ScalingHeuristics Disabled
powershell Set-NetOffloadGlobalSetting -Chimney Disabled
powershell Enable-NetAdapterBinding -Name "*" -ComponentID ms_lldp
powershell Enable-NetAdapterBinding -Name "*" -ComponentID ms_lltdio
powershell Enable-NetAdapterBinding -Name "*" -ComponentID ms_implat
powershell Enable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip
powershell Enable-NetAdapterBinding -Name "*" -ComponentID ms_rspndr
powershell Enable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6
powershell Enable-NetAdapterBinding -Name "*" -ComponentID ms_server
powershell Enable-NetAdapterBinding -Name "*" -ComponentID ms_msclient
powershell Enable-NetAdapterBinding -Name "*" -ComponentID ms_pacer
powershell Get-NetAdapterbinding -Name "*"
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "0200" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "1700" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "0200" /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "1700" /f
netsh winsock reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns
goto endrinternet

:endrinternet
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto RInternet

:NREG
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "00000006" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "00000005" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "00000004" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "00000007" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /t REG_DWORD /d "00000010" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "00000010" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "00000000" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "4294967295" /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /t REG_DWORD /d "00000001" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "00000001" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "00065534" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "00000030" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "00000000" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "00000001" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPCongestionControl" /t REG_DWORD /d "00000001" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /t REG_DWORD /d "10" /f
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\Tcpip\QoS" /v "Do not use NLA" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPCongestionControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "16384" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "explorer.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "explorer.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "explorer.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "explorer.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "iexplore.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "iexplore.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPER1_0SERVER" /v "iexplore.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_MAXCONNECTIONSPERSERVER" /v "iexplore.exe" /t REG_DWORD /d "10" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "MaxCmds" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "MaxThreads" /t REG_DWORD /d "30" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "MaxCollectionCount" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "KeepConn" /t REG_DWORD /d "32000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "DisableBandwidthThrottling" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "MaxMpxCt" /t REG_DWORD /d "125" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "10000" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
goto endinternet

:Ping
cls
)
for /f "usebackq" %%i in (`reg query HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}`) do (
Reg.exe add %%i /v "ScanWhenAssociated" /d "0" /t REG_DWORD /f
)
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0000" /v "ScanWhenAssociated" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v "ScanWhenAssociated" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0002" /v "ScanWhenAssociated" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0003" /v "ScanWhenAssociated" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0004" /v "ScanWhenAssociated" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0005" /v "ScanWhenAssociated" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0006" /v "ScanWhenAssociated" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0007" /v "ScanWhenAssociated" /t REG_DWORD /d "0" /f
goto endinternet

:DNagling
cls
for /f "tokens=3*" %%i in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkCards" /f "ServiceName" /s^|findstr /i /l "ServiceName"') do (
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TCPNoDelay" /d "1" /t REG_DWORD /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpAckFrequency" /d "1" /t REG_DWORD /f
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpDelAckTicks" /d "0" /t REG_DWORD /f
)
goto endinternet

:OSMCI
cls
cd C:\Windows
(echo page buffer=1000000Tbps) >> system.ini
(echo load=1000000Tbps) >> system.ini
(echo download=1000000Tbps) >> system.ini
(echo save=1000000Tbps) >> system.ini
(echo back=1000000Tbps) >> system.ini
(echo search=1000000Tbps) >> system.ini
(echo sound=1000000Tbps) >> system.ini
(echo webcam=1000000Tbps) >> system.ini
(echo voice=1000000Tbps) >> system.ini
(echo faxmodemfast=1000000Tbps) >> system.ini
(echo update=1000000Tbps) >> system.ini
goto endinternet

:Netsh
cls
netsh winsock reset catalog
netsh int ip reset c:resetlog.txt
netsh int ip reset C:\tcplog.txt
netsh int tcp set supplemental Internet congestionprovider=ctcp
netsh int tcp set heuristics disabled
netsh int tcp set global initialRto=2000
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global rsc=disabled
netsh int tcp set global chimney=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global ecncapability=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global MaxSynRetransmissions=2
netsh winsock reset catalog
netsh int ip reset c:resetlog.txt
netsh int ip reset C:\tcplog.txt
netsh int tcp set supplemental Internet congestionprovider=ctcp
netsh int tcp set heuristics disabled
netsh int tcp set global initialRto=2000
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global rsc=disabled
netsh int tcp set global chimney=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global ecncapability=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh interface tcp set global rss=enabled
netsh interface tcp set global MaxSynRetransmissions=2
netsh interface tcp set global autotuning=high
netsh int tcp set heuristics disabled
netsh int tcp set global initialRto=1000
netsh int tcp set global rss=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global rsc=enabled
netsh int tcp set global chimney=disabled
netsh int tcp set global autotuninglevel=high
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global netdma=enabled
netsh int tcp set supplemental template=custom icw=10
netsh Int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global rsc=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global maxsynretransmissions=2
netsh int tcp set global fastopen=enabled
netsh interface tcp set global ecncapability=disabled
netsh int tcp set global autotuninglevel=restricted
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global initialRto=1000
netsh int tcp show global
netsh int tcp set global chimney=enabled
netsh int tcp set global autotuninglevel=normal
netsh interface tcp set heuristics disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global maxsynretransmissions=2
netsh interface tcp show global
set supplemental congestion provider=ctcp
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set global
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=enabled 
netsh interface tcp set global autotuning=normal
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global dca=enabled
netsh int tcp set global rsc=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global netdma=enabled
netsh interface tcp set supplemental custom congestionprovider=ctcp
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set supplemental congestionprovider=ctcp
netsh interface ipv4 set subinterface "Internet" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Local Area Connection" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Internet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Local Area Connection" mtu=1500 store=persistent
netsh int tcp set global chimney=enabled
netsh int tcp set heuristics disabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global initialRto=1000
netsh int tcp set global maxsynretransmissions=2
netsh int tcp set supplemental template=custom icw=10
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Ethernet" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv6 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=disabled
netsh int tcp set global congestionprovider=ctcp
netsh int tcp set global ecncapability=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global rss=enabled
netsh int tcp set global fastopen=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set global rsc=enabled
netsh int tcp set global maxsynretransmissions=2
netsh int tcp set global initialRto=1000
netsh int tcp set supplemental template=custom icw=10
powershell -command "Set-NetTCPSetting -SettingName InternetCustom -CongestionProvider CTCP"
netsh int tcp set supplemental Internet congestionprovider=ctcp
netsh int tcp set global rsc=disabled
netsh interface tcp set global autotuning=disabled
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=disabled
powershell -command "Set-NetOffloadGlobalSetting -Chimney Disabled"
netsh int tcp set global netdma=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
powershell -command "Set-NetOffloadGlobalSetting -PacketCoalescingFilter enabled"
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "0200" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000ff000000000000000000000000000000" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Nsi\{eb004a03-9b1a-11d4-9123-0050047759bc}\0" /v "1700" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000ff000000000000000000000000000000000000000000ff000000000000000000000000000000" /f
ipconfig /release
ipconfig /renew
ipconfig /flushdns
goto endinternet

:endinternet
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Internet

:Update
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  Optimize" "   [+]  Reset Optimize" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto EUpdate
if %ERRORLEVEL% == 2 goto DUpdate
if %ERRORLEVEL% == 3 goto OUpdate
if %ERRORLEVEL% == 4 goto ROUpdate
if %ERRORLEVEL% == 5 goto OplineMenu

:OUpdate
cls
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallDay" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallTime" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /v "DODownloadMode" /t REG_DWORD /d "0" /f
reg.exe add "HKCU\Software\Policies\Microsoft\Windows\DriverSearching" /v "DontPromptForWindowsUpdate" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" /v "DontPromptForWindowsUpdate" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
takeown /F "$env:WinDIR\System32\MusNotification.exe"
icacls "$env:WinDIR\System32\MusNotification.exe" /deny "$($EveryOne):(X)"
takeown /F "$env:WinDIR\System32\MusNotificationUx.exe"
icacls "$env:WinDIR\System32\MusNotificationUx.exe" /deny "$($EveryOne):(X)"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto Update

:ROUpdate
cls
reg.exe add "HKCU\Software\Policies\Microsoft\Windows\DriverSearching" /v "DontPromptForWindowsUpdate" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\Software\Policies\Microsoft\Windows\DriverSearching" /v "DontPromptForWindowsUpdate" /t REG_DWORD /d "0" /f
reg.exe add "HKLM\Software\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "0" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "1" /f
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization" /f
takeown /F "$env:WinDIR\System32\MusNotification.exe"
icacls "$env:WinDIR\System32\MusNotification.exe" /allow "$($EveryOne):(X)"
takeown /F "$env:WinDIR\System32\MusNotificationUx.exe"
icacls "$env:WinDIR\System32\MusNotificationUx.exe" /allow "$($EveryOne):(X)"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto Update

:EUpdate
cls
NET START "wuauserv"
sc start wuauserv
sc config "wuauserv" start= demand
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "SettingsPageVisibility" /t REG_SZ /d "hide:cortana;privacy-automaticfiledownloads;privacy-feedback" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "IsWUHidden" /t REG_DWORD /d "0" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "SettingsPageVisibility" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\EOSNOTIFY.EXE" /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.EXE" /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotificationUX.EXE" /F
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /V Start /T REG_DWORD /D 3 /F
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d" /v "RegisteredWithAU" /t REG_DWORD /d "1" /f
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /V DeferUpgrade /T REG_DWORD /D 1 /F
icacls "%systemroot%\System32\osrss.dll" /reset
icacls "%systemroot%\System32\UsoClient.exe" /reset
icacls "%systemroot%\System32\WaaSMedic.exe" /reset
icacls "%systemroot%\System32\WaasMedicSvc.dll" /reset
icacls "%systemroot%\System32\WaaSMedicPS.dll" /reset
icacls "%systemroot%\System32\WaaSAssessment.dll" /reset
icacls "%systemroot%\System32\SIHClient.exe" /reset
icacls "%systemroot%\System32\MusNotificationUx.exe" /reset
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WindowsUpdate\sih"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WindowsUpdate\sihboot"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Maintenance Install"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Reboot"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\UpdateOrchestrator\USO_Broker_Display"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WindowsUpdate\sih"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WindowsUpdate\sihboot"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Maintenance Install"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Reboot"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\UpdateOrchestrator\USO_Broker_Display"
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /V ExcludeWUDriversInQualityUpdate /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /F
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "NoAutoRebootWithLoggedOnUsers" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
reg delete "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "1" /f
takeown /F "$env:WinDIR\System32\MusNotification.exe"
icacls "$env:WinDIR\System32\MusNotification.exe" /allow "$($EveryOne):(X)"
takeown /F "$env:WinDIR\System32\MusNotificationUx.exe"
icacls "$env:WinDIR\System32\MusNotificationUx.exe" /allow "$($EveryOne):(X)"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto Update

:DUpdate
cls
NET STOP "wuauserv"
sc stop wuauserv
sc config "wuauserv" start= disabled
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "SettingsPageVisibility" /t REG_SZ /d "hide:windowsupdate;" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "SettingsPageVisibility" /t REG_SZ /d "hide:cortana;privacy-automaticfiledownloads;privacy-feedback;windowsinsider;windowsupdate" /f
reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "IsWUHidden" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /V Start /T REG_DWORD /D 4 /F
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\BITS" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d" /v "RegisteredWithAU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "NoAutoRebootWithLoggedOnUsers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d "1" /f
SCHTASKS /END /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
SCHTASKS /END /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
SCHTASKS /END /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
SCHTASKS /END /TN "\Microsoft\Windows\WindowsUpdate\sih"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WindowsUpdate\sih"
SCHTASKS /END /TN "\Microsoft\Windows\WindowsUpdate\sihboot"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WindowsUpdate\sihboot"
SCHTASKS /END /TN "\Microsoft\Windows\UpdateOrchestrator\Maintenance Install"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Maintenance Install"
SCHTASKS /END /TN "\Microsoft\Windows\UpdateOrchestrator\Reboot"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Reboot"
SCHTASKS /END /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan"
SCHTASKS /END /TN "\Microsoft\Windows\UpdateOrchestrator\USO_Broker_Display"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\UpdateOrchestrator\USO_Broker_Display"
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /V ExcludeWUDriversInQualityUpdate /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\EOSNOTIFY.EXE" /V "Debugger" /T REG_SZ /D "" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.EXE" /V "Debugger" /T REG_SZ /D "" /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotificationUX.EXE" /V "Debugger" /T REG_SZ /D "" /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /V DeferUpgrade /T REG_DWORD /D 1 /F
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallDay" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallTime" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
takeown /F "$env:WinDIR\System32\MusNotification.exe"
icacls "$env:WinDIR\System32\MusNotification.exe" /deny "$($EveryOne):(X)"
takeown /F "$env:WinDIR\System32\MusNotificationUx.exe"
icacls "$env:WinDIR\System32\MusNotificationUx.exe" /deny "$($EveryOne):(X)"
SCHTASKS /END /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update"
SCHTASKS /END /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WindowsUpdate\Scheduled Start"
SCHTASKS /END /TN "\Microsoft\Windows\WindowsUpdate\sih"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WindowsUpdate\sih"
SCHTASKS /END /TN "\Microsoft\Windows\WindowsUpdate\sihboot"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WindowsUpdate\sihboot"
SCHTASKS /END /TN "\Microsoft\Windows\UpdateOrchestrator\Maintenance Install"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Maintenance Install"
SCHTASKS /END /TN "\Microsoft\Windows\UpdateOrchestrator\Reboot"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Reboot"
SCHTASKS /END /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\UpdateOrchestrator\Schedule Scan"
SCHTASKS /END /TN "\Microsoft\Windows\UpdateOrchestrator\USO_Broker_Display"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\UpdateOrchestrator\USO_Broker_Display"
takeown /f "%systemroot%\System32\osrss.dll" /a
icacls "%systemroot%\System32\osrss.dll" /reset
icacls "%systemroot%\System32\osrss.dll" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18

takeown /f "%systemroot%\System32\UsoClient.exe" /a
icacls "%systemroot%\System32\UsoClient.exe" /reset
icacls "%systemroot%\System32\UsoClient.exe" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18

takeown /f "%systemroot%\System32\WaaSMedic.exe" /a
icacls "%systemroot%\System32\WaaSMedic.exe" /reset
icacls "%systemroot%\System32\WaaSMedic.exe" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18
icacls "%systemroot%\System32\WaaSMedic.exe" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18

takeown /f "%systemroot%\System32\WaasMedicSvc.dll" /a
icacls "%systemroot%\System32\WaasMedicSvc.dll" /reset
icacls "%systemroot%\System32\WaasMedicSvc.dll" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18

takeown /f "%systemroot%\System32\WaaSMedicPS.dll" /a
icacls "%systemroot%\System32\WaaSMedicPS.dll" /reset
icacls "%systemroot%\System32\WaaSMedicPS.dll" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18

takeown /f "%systemroot%\System32\WaaSAssessment.dll" /a
icacls "%systemroot%\System32\WaaSAssessment.dll" /reset
icacls "%systemroot%\System32\WaaSAssessment.dll" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18

takeown /f "%systemroot%\System32\SIHClient.exe" /a
icacls "%systemroot%\System32\SIHClient.exe" /reset
icacls "%systemroot%\System32\SIHClient.exe" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18

takeown /f "%systemroot%\System32\MusNotificationUx.exe" /a
icacls "%systemroot%\System32\MusNotificationUx.exe" /reset
icacls "%systemroot%\System32\MusNotificationUx.exe" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto Update

:Defender
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  Firewall" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto EDefender
if %ERRORLEVEL% == 2 goto DDefender
if %ERRORLEVEL% == 3 goto Firewall
if %ERRORLEVEL% == 4 goto OplineMenu

:EDefender
cls
SC CONFIG WinDefend START= AUTO
SC CONFIG WdNisSvc START= AUTO
SC CONFIG SecurityHealthService START= AUTO
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /V DisableAntiSpyware /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /V DisableBehaviorMonitoring /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /V DisableOnAccessProtection /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /V DisableScanOnRealtimeEnable /F
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification"
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /V SpyNetReporting /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /V SubmitSamplesConsent /F
REG DELETE "HKLM\SOFTWARE\Policies\Microsoft\MRT" /V DontReportInfectionInformation /F
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V SmartScreenEnabled /T REG_SZ "RequireAdmin" /F
reg add "HKLM\System\CurrentControlSet\Services\WinDefend" /v "Start" /t REG_DWORD /d "2" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Windows Defender Security Center\Notifications" /v "DisableNotifications" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "AllowFastServiceStartup" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "ServiceKeepAlive" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiVirus" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIOAVProtection" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpynetReporting" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "DisableBlockAtFirstSeen" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableBehaviorMonitoring" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableIOAVProtection" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableOnAccessProtection" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRealtimeMonitoring" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v "DisableBlockAtFirstSeen" /f
Reg.exe delete "HKLM\SOFTWARE\Windows Defender Security Center\Notifications" /v "DisableNotifications" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /f
Reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SpyNetReporting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v DontReportInfectionInformation /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SpyNetReporting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v SpyNetReporting /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v SubmitSamplesConsent /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v DontReportInfectionInformation /t REG_DWORD /d 0 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /V Start /T REG_DWORD /D 2 /F
reg add HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet /v "SpyNetReporting" /t REG_DWORD /d "1" /f
reg add HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet /v "SubmitSamplesConsent" /t REG_DWORD /d "1" /f
reg delete HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender /v "DisableAntiSpyware" /f
reg delete HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender /v "DisableRoutinelyTakingAction" /f
reg delete HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender\Real-Time Protection /v "DisableRealtimeMonitoring" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\WinDefend /v "Start" /t REG_DWORD /d "2" /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\WinDefend /v "AutorunsDisabled" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc /v "Start" /t REG_DWORD /d "2" /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc /v "AutorunsDisabled" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\Sense /v "Start" /t REG_DWORD /d "2" /f
reg delete HKLM\SYSTEM\CurrentControlSet\Services\Sense /v "AutorunsDisabled" /f
Reg.exe add "HKLM\SOFTWARE\Classes\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}\InprocServer32" /ve /t REG_SZ /d "C:\Program Files\Windows Defender\shellext.dll" /f
Reg.exe add "HKLM\SOFTWARE\Classes\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}\InprocServer32" /v "ThreadingModel" /t REG_SZ /d "Apartment" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /t REG_EXPAND_SZ /d "%%windir%%\system32\SecurityHealthSystray.exe" /f
icacls "%systemroot%\System32\smartscreen.exe" /reset
Reg del "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /f
cd C:\Users\%username%\Downloads
mkdir bin
cd C:\Users\%username%\Downloads\bin
powershell -command "& { iwr https://github.com/Smolich404/WindowsDefender/releases/download/E/NSudoLG.exe -OutFile NSudoLG.exe }"
powershell -command "& { iwr https://github.com/Smolich404/WindowsDefender/releases/download/E/Enable_Windows_Defender.bat -OutFile Enable_Windows_Defender.bat }"
timeout 2 >nul
@start /b "Opline - TrustedInstaller" "C:\Users\%username%\Downloads\bin\NSudoLG.exe" -U:T -P:E "C:\Users\%username%\Downloads\bin\Enable_Windows_Defender.bat"
timeout 7 >nul
del NSudoLG.exe
del Enable_Windows_Defender.bat
cd C:\Users\%username%\Downloads
rmdir bin
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto Defender

:DDefender
cls
SC CONFIG WinDefend START= DISABLED
SC CONFIG WdNisSvc START= DISABLED
SC CONFIG SecurityHealthService START= DISABLED
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /V DisableAntiSpyware /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /V DisableBehaviorMonitoring /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /V DisableOnAccessProtection /T REG_DWORD /D 1 /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /V DisableScanOnRealtimeEnable /T REG_DWORD /D 1 /F
SCHTASKS /END /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cache Maintenance"
SCHTASKS /END /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Windows Defender\Windows Defender Cleanup"
SCHTASKS /END /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Windows Defender\Windows Defender Scheduled Scan"
SCHTASKS /END /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\Windows Defender\Windows Defender Verification"
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /V SpyNetReporting /T REG_DWORD /D 0 /F
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /V SubmitSamplesConsent /T REG_DWORD /D 2 /F
reg add "HKLM\System\CurrentControlSet\Services\WinDefend" /v "Start" /t REG_DWORD /d "4" /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V SmartScreenEnabled /T REG_SZ "OFF" /F
Reg.exe add "HKLM\SOFTWARE\Policies\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "AllowFastServiceStartup" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "ServiceKeepAlive" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiVirus" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableBehaviorMonitoring" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableIOAVProtection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableOnAccessProtection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableScanOnRealtimeEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SpynetReporting" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v "DisableBlockAtFirstSeen" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontReportInfectionInformation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableBehaviorMonitoring" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableIOAVProtection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableOnAccessProtection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet" /v "DisableBlockAtFirstSeen" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Notifications" /v "DisableNotifications" /t REG_DWORD /d "1" /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender\Spynet" /v DontReportInfectionInformation /t REG_DWORD /d 1 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /V Start /T REG_DWORD /D 4 /F
reg add HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet /v "SpyNetReporting" /t REG_DWORD /d "0" /f
reg add HKLM\SOFTWARE\Microsoft\Windows Defender\Spynet /v "SubmitSamplesConsent" /t REG_DWORD /d "2" /f
reg add HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender /v "DisableAntiSpyware" /t REG_DWORD /d "1" /f
reg add HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender /v "DisableRoutinelyTakingAction" /t REG_DWORD /d "1" /f
reg add HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows Defender\Real-Time Protection /v "DisableRealtimeMonitoring" /t REG_DWORD /d "1" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\WinDefend /v "Start" /t REG_DWORD /d "4" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\WinDefend /v "AutorunsDisabled" /t REG_DWORD /d "3" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc /v "Start" /t REG_DWORD /d "4" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\WdNisSvc /v "AutorunsDisabled" /t REG_DWORD /d "3" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\Sense /v "Start" /t REG_DWORD /d "4" /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\Sense /v "AutorunsDisabled" /t REG_DWORD /d "3" /f
Reg.exe delete "HKLM\SOFTWARE\Classes\CLSID\{09A47860-11B0-4DA5-AFA5-26D86198A780}\InprocServer32" /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SecurityHealth" /f
takeown /f "%systemroot%\System32\smartscreen.exe" /a
icacls "%systemroot%\System32\smartscreen.exe" /reset
taskkill /im smartscreen.exe /f
icacls "%systemroot%\System32\smartscreen.exe" /inheritance:r /remove *S-1-5-32-544 *S-1-5-11 *S-1-5-32-545 *S-1-5-18
Reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "WindowsDefender" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f
cd C:\Users\%username%\Downloads
mkdir bin
cd C:\Users\%username%\Downloads\bin
powershell -command "& { iwr https://github.com/Smolich404/WindowsDefender/releases/download/E/NSudoLG.exe -OutFile NSudoLG.exe }"
powershell -command "& { iwr https://github.com/Smolich404/WindowsDefender/releases/download/E/Disable_Windows_Defender.bat -OutFile Disable_Windows_Defender.bat }"
timeout 2 >nul
@start /b "Opline - TrustedInstaller" "C:\Users\%username%\Downloads\bin\NSudoLG.exe" -U:T -P:E "C:\Users\%username%\Downloads\bin\Disable_Windows_Defender.bat"
timeout 7 >nul
del NSudoLG.exe
del Disable_Windows_Defender.bat
cd C:\Users\%username%\Downloads
rmdir bin
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto Defender

:Firewall
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                             ____  _____  _      _____ _   _ ______                      
echo                            / __ \^|  __ \^| ^|    ^|_   _^| \ ^| ^|  ____^|                     
echo                           ^| ^|  ^| ^| ^|__) ^| ^|      ^| ^| ^|  \^| ^| ^|__                        
echo                           ^| ^|  ^| ^|  ___/^| ^|      ^| ^| ^|   \ ^|  __^|                       
echo                           ^| ^|__^| ^| ^|    ^| ^|____ _^| ^|_^| ^|\  ^| ^|____                      
echo                            \____/^|_^|    ^|______^|_____^|_^| \_^|______^|                     
echo                   _____  ____  ______ _________          __     _____  ______ 
echo                  / ____^|/ __ \^|  ____^|__   __\ \        / /\   ^|  __ \^|  ____^|
echo                 ^| (___ ^| ^|  ^| ^| ^|__     ^| ^|   \ \  /\  / /  \  ^| ^|__) ^| ^|__   
echo                  \___ \^| ^|  ^| ^|  __^|    ^| ^|    \ \/  \/ / /\ \ ^|  _  /^|  __^|  
echo                  ____) ^| ^|__^| ^| ^|       ^| ^|     \  /\  / ____ \^| ^| \ \^| ^|____ 
echo                 ^|_____/ \____/^|_^|       ^|_^|      \/  \/_/    \_\_^|  \_\______^|
echo.
echo.
call :ColorText 0A "                                            L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable Service" "   [+]  Disable Service" "   [+]  Enable Configuring Firewall Settings" "   [+]  Disable Configuring Firewall Settings" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto EFirewall
if %ERRORLEVEL% == 2 goto DFirewall
if %ERRORLEVEL% == 3 goto EFirewall2
if %ERRORLEVEL% == 4 goto DFirewall2
if %ERRORLEVEL% == 5 goto Defender

:DFirewall
cls
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\MpsSvc" /V Start /T REG_DWORD /D 4 /F
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Firewall

:DFirewall2
cls
powershell.exe -command "netsh advfirewall set allprofiles state off"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Firewall

:EFirewall
cls
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\MpsSvc" /V Start /T REG_DWORD /D 2 /F
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Firewall

:EFirewall2
cls
powershell.exe -command "netsh advfirewall set allprofiles state on"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Firewall

:Gpedit
cls
pushd "%~dp0" 

dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >List.txt 
dir /b %SystemRoot%\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>List.txt 

for /f %%i in ('findstr /i . List.txt 2^>nul') do dism /online /norestart /add-package:"%SystemRoot%\servicing\Packages\%%i"
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Others

:PointRestore
cls
C:\Windows\System32\SystemPropertiesProtection.exe>nul
Goto OplineMenu

:EXIT
cls
del C:\Windows\System32\cmdMenuSel.exe
EXIT


goto :Beginoffile6
:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof
:Beginoffile6