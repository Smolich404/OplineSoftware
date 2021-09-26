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
mode con: cols=73 lines=5
echo.
echo   Please run as administrator, to continue loading Opline Software
echo.
echo   Uruchom jako administrator, aby kontynuowac ladowanie Opline Software
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Debloater" "   [+]  Regedit"  "   [+]  Cleaner" "   [+]  Booster | Optimization" "   [+]  Services" "   [+]  OneDrive" "   [+]  Other Windows Add-ons" "   [+]  Game Settings" "   [+]  GPU Tweaks" "   [+]  CPU Tweaks" "   [+]  RAM Tweaks" "   [+]  Internet Tweaks" "   [+]  Mouse and Keyboard Fix" "   [+]  Windows Apps" "   [+]  Windows Defender" "   [+]  Windows Update" "   [+]  System Restore Properties" "   [+]  Contact | Help" "   [+]  Exit"
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
title Opline Software [LITE] [ERROR]
cls
color 4F
echo.
echo                                                 [ERROR 404]
echo.
echo                            Problems have been detected with the cmdmenusel.exe
echo              Try to contact me via discord if there are still problems with it Smolich#9211
echo                         and I will try to help you somehow and fix this error :)
echo.
echo                                     Click ENTER to close this program
echo.
echo.
echo                                     Wykryto problemy z cmdmenusel.exe
echo    Sprobuj skontaktowac sie ze mna poprzez discord jezeli nadal wystepuja z tym problemy Smolich#9211
echo                            i postaram sie jakos pomoc i naprawic ten blad :)
echo.
echo                                   Kliknij ENTER, aby zamknac ten program
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл         
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Debloater" "   [+]  Debloater V2" "   [+]  Reset Debloater" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto GANG
if %ERRORLEVEL% == 2 goto GANG2
if %ERRORLEVEL% == 3 goto RESETGANG
if %ERRORLEVEL% == 4 goto OplineMenu

:Regedit
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
start https://cdn.discordapp.com/attachments/728982277874384916/860946259477004288/Reset_Opline.reg
start https://cdn.discordapp.com/attachments/728982277874384916/845741661962895381/Reset_Laptop_Optimization.reg
TIMEOUT /T 5 > NUL
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
call :ColorText 0A "                     Enter the name of the application with .exe"
echo.
echo                       If you do not know how to do it, just enter your game
echo                          right-click on it and click open file location 
echo                       and you will see the name of this game and it's ready
echo                   In the case of the Game via Steam it is different to find it 
echo           you click on the folder where you have Steam, steamapps and common installed 
echo             and there you will find the correct name of this game via exe and ready
echo.
call :ColorText 0A "                            Wpisz nazwe aplikacji z .exe"
echo.
echo                      Jesli nie wiesz, jak to zrobic, po prostu wejdz do gry
echo                 kliknij prawym przyciskiem myszy i kliknij otworz lokalizacje pliku
echo                          a zobaczysz oryginalna nazwe tej gry i gotowe
echo                       W przypadku Gry przez Steam inaczej jest ja znalezc
echo             klikniesz na folder, w ktorym masz zainstalowany Steam, steamapps i common
echo                    i tam znajdziesz poprawna nazwe tej gry przez exe i gotowe
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
call :ColorText 0A "                      Enter the name of the application with .exe"
echo.
echo                      If you do not know how to do it, just enter your game
echo                          right-click on it and click open file location 
echo                      and you will see the name of this game and it's ready
echo                  In the case of the Game via Steam it is different to find it 
echo           you click on the folder where you have Steam, steamapps and common installed 
echo             and there you will find the correct name of this game via exe and ready
echo.
call :ColorText 0A "                             Wpisz nazwe aplikacji z .exe"
echo.
echo                   Jesli nie wiesz, jak to zrobic, po prostu wejdz do gry
echo             kliknij prawym przyciskiem myszy i kliknij otworz lokalizacje pliku
echo                       a zobaczysz oryginalna nazwe tej gry i gotowe
echo                    W przypadku Gry przez Steam inaczej jest ja znalezc
echo          klikniesz na folder, w ktorym masz zainstalowany Steam, steamapps i common
echo                 i tam znajdziesz poprawna nazwe tej gry przez exe i gotowe
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
start https://cdn.discordapp.com/attachments/728982277874384916/860946257223876638/Opline.reg
start https://cdn.discordapp.com/attachments/728982277874384916/818441610429333525/Laptop_Registry_Optimization.reg
TIMEOUT /T 5 > NUL
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Mouse Fix V1" "   [+]  Mouse Fix V2" "   [+]  Mouse Fix V3" "   [+]  Mouse Fix V4" "   [+]  Mouse and Keyboard Fix MAX" "   [+]  Keyboard Fix V1" "   [+]  Keyboard Fix V2" "   [+]  Keyboard Fix V3" "   [+]  Keyboard Fix V4" "   [+]  Reset ALL" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto MFix1
if %ERRORLEVEL% == 2 goto MFix2
if %ERRORLEVEL% == 3 goto MFix3
if %ERRORLEVEL% == 4 goto MFix4
if %ERRORLEVEL% == 5 goto FixMax
if %ERRORLEVEL% == 6 goto KFix1
if %ERRORLEVEL% == 7 goto KFix2
if %ERRORLEVEL% == 8 goto KFix3
if %ERRORLEVEL% == 9 goto KFix4
if %ERRORLEVEL% == 10 goto RFix
if %ERRORLEVEL% == 11 goto OplineMenu

:RFix
cls
Reg.exe add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9012038010000000" /f
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
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "500" /f
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

:FixMax
cls
Reg.exe add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "9e1e068012000000" /f
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
Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "480" /f
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
Powershell iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))
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
SCHTASKS /END /TN "\NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
SCHTASKS /DELETE /TN "\NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /F
SCHTASKS /END /TN "\NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
SCHTASKS /DELETE /TN "\NvTmRep_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /F
SCHTASKS /END /TN "\NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}"
SCHTASKS /DELETE /TN "\NvTmRepOnLogon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" /F
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
RD /S /Q "C:\ProgramData\Microsoft\windows\Sqm\"
RD /S /Q "C:\ProgramData\Microsoft\windows\WER\"
RD /S /Q "%USERPROFILE%\AppData\Local\Microsoft\Windows\WER\"
RD /S /Q "C:\Users\All Users\Microsoft\Windows\Sqm\"
RD /S /Q "C:\Users\All Users\Microsoft\Windows\WER\"
RD /S /Q "C:\ProgramData\Microsoft\Diagnosis\"
RD /S /Q "C:\Users\All Users\Microsoft\Diagnosis\"
RD /S /Q "%WINDIR%\System32\LogFiles\SQM\"
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
REG DELETE "HKCU\Software\Policies\Microsoft\Windows\Explorer" /V DisableNotificationCenter /F
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
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto Debloater

:Services
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  Spooler" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto EServices
if %ERRORLEVEL% == 2 goto DServices
if %ERRORLEVEL% == 3 goto Spooler
if %ERRORLEVEL% == 4 goto OplineMenu

:Spooler
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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


:EServices
cls
Powershell iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JcigQ'))
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
SC CONFIG "RemoteRegistry" START= AUTO
NET START "RemoteRegistry"
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
sc config RemoteRegistry start= auto
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
NET START "RemoteRegistry"
SC CONFIG "RemoteRegistry" START= AUTO
NET START "IEEtwCollectorService"
SC CONFIG "IEEtwCollectorService" START= AUTO
NET START "wercplsupport"
SC CONFIG "wercplsupport" START= AUTO
SC CREATE "NvTelemetryContainer"
NET START "NvTelemetryContainer"
SC CONFIG "NvTelemetryContainer" START= AUTO
NET START "TabletInputService"
SC CONFIG "TabletInputService" START= AUTO
SC CREATE "diagtrack"
NET START "diagtrack"
SC CONFIG "diagtrack" START= AUTO
sc config xbgm start=auto
sc start xbgm
sc config XboxGipSvc start=auto
sc start XboxGipSvc
sc config WaaSMedicSvc start=auto
sc start WaaSMedicSvc
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
sc config wlidsvc start=auto
sc start wlidsvc
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
sc config ssh-agent start=auto
sc start ssh-agent
sc config sshd start=auto
sc start sshd
sc config DoSvc start=auto
sc start DoSvc
sc config tzautoupdate start=auto
sc start tzautoupdate
sc config CertPropSvc start=auto
sc start CertPropSvc
sc config RemoteRegistry start=auto
sc start RemoteRegistry
sc config RemoteAccess start=auto
sc start RemoteAccess
sc config TimeBrokerSvc start=auto
sc start TimeBrokerSvc
sc config WbioSrvc start=auto
sc start WbioSrvc
sc config PcaSvc start=auto
sc start PcaSvc
sc config NetTcpPortSharing start=auto
sc start NetTcpPortSharing
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
sc config shpamsvc start=auto
sc start shpamsvc
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
Powershell iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JtcFW'))
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
NET STOP "NvTelemetryContainer"
SC CONFIG "NvTelemetryContainer" START= DISABLED
SC DELETE "NvTelemetryContainer"
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
NET STOP "NvTelemetryContainer"
SC CONFIG "NvTelemetryContainer" START= DISABLED
SC DELETE "NvTelemetryContainer"
NET STOP "TabletInputService"
SC CONFIG "TabletInputService" START= DISABLED
NET STOP "diagtrack"
SC CONFIG "diagtrack" START= DISABLED
SC DELETE "diagtrack"
sc config xbgm start=disabled
sc stop xbgm
sc config XboxGipSvc start=disabled
sc stop XboxGipSvc
sc config WaaSMedicSvc start=disabled
sc stop WaaSMedicSvc
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
sc config wlidsvc start=disabled
sc stop wlidsvc
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
sc config wlidsvc start= auto
sc start wlidsvc
sc stop "CertPropSvc"
sc config "CertPropSvc" start= disabled
sc stop "PeerDistSvc"
sc config "PeerDistSvc" start= disabled
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
Powershell iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JcGHI'))
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
PowerShell -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsAlarms* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsCamera* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *bing* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *OneNote* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *SkypeApp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *solit* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *zune* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsCalculator* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsMaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Sway* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *ConnectivityStore* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Facebook* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Twitter* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Drawboard PDF* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *soundrecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *officehub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *skypeapp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *zunemusic* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *windowsmaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *solitairecollection* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *bingfinance* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *zunevideo* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *bingnews* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *onenote* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *windowsphone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *bingsports* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *soundrecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *bingweather* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.ZuneMusic | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.Music.Preview | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.BingTravel | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.BingHealthAndFitness | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.BingFoodAndDrink | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.People | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.BingFinance | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.3DBuilder | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.WindowsCalculator | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.BingNews | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.BingSports | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.WindowsCamera | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.Getstarted | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.Office.OneNote | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.WindowsMaps | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.MicrosoftSolitaireCollection | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.MicrosoftOfficeHub | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.BingWeather | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.BioEnrollment | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.Windows.Photos | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -name Microsoft.WindowsPhone | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Paint* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *windowsalarms* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *bingsports* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.549981C3F5F10* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *feedback* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *windowsmaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *bingfinance* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MSPaint* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *windowsphone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.YourPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.ScreenSketch* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *soundrecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.WebMediaExtensions* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.WebpImageExtension* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -Name Microsoft.XboxApp | Remove-AppxPackage"
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
PowerShell -Command "Get-AppxPackage -AllUsers *WindowsCalculator* | Remove-AppxPackage"
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
PowerShell -Command "Get-AppxPackage -AllUsers -name Microsoft.WindowsCalculator | Remove-AppxPackage"
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
PowerShell -Command "Get-AppxPackage -AllUsers *Paint* | Remove-AppxPackage"
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
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.MSPaint* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *people* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *windowsphone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.YourPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *photos* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.Print3D* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.ScreenSketch* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *soundrecorder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.WebMediaExtensions* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers *Microsoft.WebpImageExtension* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -Name Microsoft.XboxApp | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Microsoft.Advertising.Xaml* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -Name Microsoft.Advertising.Xaml | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *netflix* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -Name netflix | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage Microsoft.Microsoft3DViewer | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.Microsoft3DViewer* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -Name *xbox* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers -Name *xbox* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *HEIFImageExtension* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.DesktopAppInstaller* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage HEIFImageExtension | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage Microsoft.DesktopAppInstaller | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.VP9VideoExtensions* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage Microsoft.VP9VideoExtensions | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.Wallet* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage Microsoft.Wallet | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -allusers *Microsoft.XboxGameCallableUI* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage Microsoft.XboxGameCallableUI | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage Microsoft.BioEnrollment | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage -AllUsers -Name Microsoft.BioEnrollment | Remove-AppxPackage"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Boot Settings" "   [+]  Gpedit Enabler" "   [+]  UAC" "   [+]  Edge" "   [+]  Timer Resolution Service" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto Boot
if %ERRORLEVEL% == 2 goto Gpedit
if %ERRORLEVEL% == 3 goto UAC
if %ERRORLEVEL% == 4 goto Edge
if %ERRORLEVEL% == 5 goto STR
if %ERRORLEVEL% == 6 goto OplineMenu

:STR
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
"C:\SetTimerResolutionService.exe" -install >nul 2>&1
sc config "STR" start= auto >nul 2>&1
sc start "STR" >nul 2>&1
bcdedit /set useplatformtick yes >nul 2>&1
bcdedit /set disabledynamictick yes >nul 2>&1
goto redists

:redists
if exist "C:\SetTimerResolutionService.exe" goto:alrinstalled
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/820603647082889226/VisualCppRedist_AIO_x86_x64.exe" -OutFile "%temp%\VisualCppRedist_AIO_x86_x64.exe" >nul 2>&1
%temp%\VisualCppRedist_AIO_x86_x64.exe >nul 2>&1
del %temp%\VisualCppRedist_AIO_x86_x64.exe
goto sinstall

:sinstall
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798668491921162271/SetTimerResolutionService.exe" -OutFile "%temp%\SetTimerResolutionService.exe" >nul 2>&1
move "%temp%\SetTimerResolutionService.exe" "C:\" >nul 2>&1
"C:\SetTimerResolutionService.exe" -install >nul 2>&1
sc config "STR" start= auto >nul 2>&1
sc start STR >nul 2>&1
goto success1

:success1
cls
SET msgboxTitle=Opline Software
SET msgboxBody=The Service Has Been Installed And Activated Successfully! - Usluga Zostala Pomyslnie Zainstalowana i Aktywowana!
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto STR

:alrinstalled
cls
SET msgboxTitle=Opline Software
SET msgboxBody=The Service Was Enabled Successfully! - Usluga Zostala Pomyslnie Wlaczona!
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto STR

:DSTR
cls
bcdeedit /deletevalue useplatformclock >nul 2>&1
bcdeedit /deletevalue useplatformtick >nul 2>&1
bcdeedit /deletevalue disabledynamictick >nul 2>&1
sc config "STR" start= disabled >nul 2>&1
sc stop STR
goto success2

:success2
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Timer Resolution Has Been Successfully Disabled! - Timer Resolution Zostal Pomyslnie Wylaczony!
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto STR

:USTR
cls
sc delete "STR"
bcdeedit /deletevalue useplatformclock >nul 2>&1
bcdeedit /deletevalue useplatformtick >nul 2>&1
bcdeedit /deletevalue disabledynamictick >nul 2>&1
del C:\SetTimerResolutionService.exe
goto success3

:success3
cls
SET msgboxTitle=Opline Software
SET msgboxBody=The Service Has Been Uninstalled! - Usluga Zostala Pomyslnie Odinstalowana!
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
start https://www.youtube.com/watch?v=V5So6iMJAD0&ab_channel=HowtoDigital
goto Edge

:INS
cls
start https://www.microsoft.com/en-us/edge
goto Edge

:UAC
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
goto end2

:EUAC
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "1" /f
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

:OneDrive
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
Powershell iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/JtCJr'))
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                                Discord Server: Discord.Link/Opline
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Delete Other Plans" "   [+]  Install Opline Plan" "   [+]  Enable TRIM for SSD drives" "   [+]  Optimization Bcdedit" "   [+]  Optimization Powercfg" "   [+]  SSD Tune" "   [+]  Reset" "   [+]  Exit" 
if %ERRORLEVEL% == 1 goto DelOPlans
if %ERRORLEVEL% == 2 goto OPlan
if %ERRORLEVEL% == 3 goto TRIM
if %ERRORLEVEL% == 4 goto Bcdedit
if %ERRORLEVEL% == 5 goto Powercfg
if %ERRORLEVEL% == 6 goto SSDT
if %ERRORLEVEL% == 7 goto RBoostOS
if %ERRORLEVEL% == 8 goto OplineMenu

:RBoostOS
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Reset Delete Other Plans" "   [+]  Reset Install Opline Plan" "   [+]  Reset Enable TRIM for SSD drives" "   [+]  Reset Optimization Bcdedit" "   [+]  Reset Optimization Powercfg" "   [+]  Reset SSD Tune" "   [+]  Exit" 
if %ERRORLEVEL% == 1 goto RDelOPlans
if %ERRORLEVEL% == 2 goto ROPlan
if %ERRORLEVEL% == 3 goto RTRIM
if %ERRORLEVEL% == 4 goto RBcdedit
if %ERRORLEVEL% == 5 goto RPowercfg
if %ERRORLEVEL% == 6 goto RSSDT
if %ERRORLEVEL% == 7 goto BoostOS

:RSSDT
cls
fsutil behavior set DisableLastAccess 0
fsutil behavior set EncryptPagingFile 1
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

:RPowercfg
cls
powercfg.exe -h on
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
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RBoostOS

:RDelOPlans
cls
powercfg -duplicatescheme 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a
powercfg -duplicatescheme 77777777-7777-7777-7777-777777777777
powercfg -duplicatescheme 44444444-4444-4444-4444-444444444444
powercfg -restoredefaultschemes
::Balanced Plan
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/847122070898212974/Balanced.pow" -OutFile "%temp%\Balanced.pow" >nul 2>&1
powercfg -import "%temp%\Balanced.pow" 381b4222-f694-41f0-9685-ff5bb260df2e >nul 2>&1
::High Performance Plan
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/847122069070020658/High_performance.pow" -OutFile "%temp%\High_performance.pow" >nul 2>&1
powercfg -import "%temp%\High_performance.pow" 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul 2>&1
powercfg -SETACTIVE "8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" >nul 2>&1
::Power Saving Plan
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/847122073045303346/Power_saver.pow" -OutFile "%temp%\Power_saver.pow" >nul 2>&1
powercfg -import "%temp%\Power_saver.pow" a1841308-3541-4fab-bc81-f71556f20b4a >nul 2>&1
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
bcdedit /set useplatformclock no
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes
bcdedit /set tscsyncpolicy default
bcdedit /set hypervisorlaunchtype auto
bcdedit /set quietboot no
bcdedit /set linearaddress57 OptIn
bcdedit /set increaseuserva 268435328
bcdedit /set tpmbootentropy default
bcdedit /set firstmegabytepolicy UseAll
bcdedit /set avoidlowmemory 0x8000000
bcdedit /set nolowmem no
bcdedit /set allowedinmemorysettings 0x15000075
bcdedit /set isolatedcontext yes
bcdedit /set vsmlaunchtype Off
bcdedit /set vm No
bcdedit /set configaccesspolicy Default
bcdedit /set MSI Default
bcdedit /set usephysicaldestination No
bcdedit /set usefirmwarepcisettings No
bcdedit /set nx OptIn
bcdedit /set ems No
bcdedit /set bootems No
bcdedit /set integrityservices enable
bcdedit /set tpmbootentropy Default
bcdedit /set debug Yes
bcdedit /set disableelamdrivers Yes
bcdedit /timeout 180
bcdedit /set bootux disabled
bcdedit /set bootmenupolicy standard
bcdedit /set x2apicpolicy default
bcdedit /set uselegacyapicmode yes
bcdedit /deletevalue useplatformclock
bcdedit /deletevalue useplatformtick
bcdedit /deletevalue disabledynamictick
bcdedit /set tscsyncpolicy default
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto RBoostOS

:OPlan
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/818254326253748244/Ultimate_Perfomance.pow" -OutFile "%temp%\Ultimate_Performance.pow"
powercfg -import "%temp%\Ultimate_Performance.pow" 44444444-4444-4444-4444-444444444448
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444448"
powercfg /changename 44444444-4444-4444-4444-444444444448 "Opline Power Plan" "The Ultimate Power Plan to reduce latency and boost FPS."
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
powercfg.exe -h off
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
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto BoostOS

:DelOPlans
cls
powercfg /d 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg /d 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg /d a1841308-3541-4fab-bc81-f71556f20b4a
powercfg -delete 77777777-7777-7777-7777-777777777777
powercfg -delete 44444444-4444-4444-4444-444444444444
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
bcdedit /set increaseuserva 1024
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

:RAM
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                                 How many RAM (in GB) do you have?
echo.
echo                                    Ile masz pamieci RAM (w GB)?
echo.
set /p RAM=
if %RAM%== 2 goto 2ram
if %RAM%== 4 goto 4ram
if %RAM%== 6 goto 6ram
if %RAM%== 8 goto 8ram
if %RAM%== 12 goto 12ram
if %RAM%== 16 goto 16ram
if %RAM%== 24 goto 24ram
if %RAM%== 32 goto 32ram
if %RAM%== 64 goto 64ram
if %RAM%== 96 goto 96ram
if %RAM%== 128 goto 128ram
if %RAM%== 192 goto 192ram
if %RAM%== 256 goto 256ram
if %RAM%== Reset goto Reset
if %RAM%== reset goto Reset
if %RAM%== RESET goto Reset
if %RAM%== X goto OplineMenu
if %RAM%== x goto OplineMenu
cls
goto RAM

:2ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "34173266" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "524288" /f
goto ENDRAM

:4ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "68764420" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "1048576" /f
goto ENDRAM

:6ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "103355478" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "1572864" /f
goto ENDRAM

:8ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "137922056" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "2097152" /f
goto ENDRAM

:12ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "307767570" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "3145728" /f
goto ENDRAM

:16ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "376926742" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "4194304" /f
goto ENDRAM

:24ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "622221348" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "6291456" /f
goto ENDRAM

:32ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "861226034" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "8388608" /f
goto ENDRAM

:64ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "1729136740" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "16777216" /f
goto ENDRAM

:96ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "4301664918" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "18874368" /f
goto ENDRAM

:128ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "5169575720" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "33554432" /f
goto ENDRAM

:192ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "8610014610" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "50331648" /f
goto ENDRAM

:256ram
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "10339177558" /f
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "IoPageLockLimit" /t REG_DWORD /d "67108864" /f
goto ENDRAM

:Reset
cls
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "SvcHostSplitThresholdInKB" /t REG_DWORD /d "3670016" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v IoPageLockLimit /t REG_DWORD /d 0 /f
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Radeon Registry Optimization" "   [+]  GPU Thread Priority and Unhide Silk Smoothness" "   [+]  Install MSI Afterburner and Import Skin" "   [+]  Nvidia Registry Optimization" "   [+]  Import Nvidia Settings" "   [+]  Reset" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto RGPU
if %ERRORLEVEL% == 2 goto OGPU
if %ERRORLEVEL% == 3 goto IMSI
if %ERRORLEVEL% == 4 goto NGPU
if %ERRORLEVEL% == 5 goto INVS
if %ERRORLEVEL% == 6 goto RGPU2
if %ERRORLEVEL% == 7 goto OplineMenu

:RGPU2
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Reset Radeon Registry Optimization" "   [+]  Reset Nvidia Registry Optimization" "   [+]  Reset Thread Priority and Unhide Silk Smoothness" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto RGRO
if %ERRORLEVEL% == 2 goto RNRO
if %ERRORLEVEL% == 3 goto RTPSS
if %ERRORLEVEL% == 4 goto GPU

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
Goto ENDRGPU

:RNRO
cls
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /f
goto ENDRGPU

:RTPSS
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "0" /f
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
goto ENDGPU

:IMSI
cls
goto install

:install
TITLE Downloading the installer for MSI Afterburner... - Pobieranie instalatora dla MSI Afterburner...
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/820583811737714688/MSIAfterburnerSetup463.exe" -OutFile "%temp%\MSIAfterburnerSetup463.exe"
%temp%\MSIAfterburnerSetup463.exe
goto skin

:skin
TITLE Importing the KBoost skin... - Importowanie skorki KBoost...
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
TIMEOUT /T 5
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798652651906531339/defaultX.uxf" -OutFile "%temp%\defaultX.uxf"
move "%temp%\defaultX.uxf" "%MSI%\Skins\defaultX.uxf"
cd %temp%
del MSIAfterburnerSetup463.exe
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

:OGPU
cls
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished, now you need to change the SILK option to Off in the Control Panel from Nvidia, click on Apply and it's ready. - Skonczone, teraz musisz w Panerze Sterowania od Nvidii zmienic opcje SILK na Off, kliknac w Zastosuj i gotowe.
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
goto GPU

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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл 
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
if %CPU%== 1 goto CPUTWEAK
if %CPU%== 2 goto CPUTWEAK
if %CPU%== 3 goto CPUTWEAK
if %CPU%== 4 goto CPUTWEAK
if %CPU%== 5 goto CPUTWEAK
if %CPU%== 6 goto CPUTWEAK
if %CPU%== 7 goto CPUTWEAK
if %CPU%== 8 goto CPUTWEAK
if %CPU%== 9 goto CPUTWEAK
if %CPU%== 10 goto CPUTWEAK
if %CPU%== 11 goto CPUTWEAK
if %CPU%== 12 goto CPUTWEAK
if %CPU%== 13 goto CPUTWEAK
if %CPU%== 14 goto CPUTWEAK
if %CPU%== 15 goto CPUTWEAK
if %CPU%== 16 goto CPUTWEAK
if %CPU%== 17 goto CPUTWEAK
if %CPU%== 18 goto CPUTWEAK
if %CPU%== 19 goto CPUTWEAK
if %CPU%== 20 goto CPUTWEAK
if %CPU%== 21 goto CPUTWEAK
if %CPU%== 22 goto CPUTWEAK
if %CPU%== 23 goto CPUTWEAK
if %CPU%== 24 goto CPUTWEAK
if %CPU%== 25 goto CPUTWEAK
if %CPU%== 26 goto CPUTWEAK
if %CPU%== 27 goto CPUTWEAK
if %CPU%== 28 goto CPUTWEAK
if %CPU%== 29 goto CPUTWEAK
if %CPU%== 30 goto CPUTWEAK
if %CPU%== 31 goto CPUTWEAK
if %CPU%== 32 goto CPUTWEAK
if %CPU%== 33 goto CPUTWEAK
if %CPU%== 34 goto CPUTWEAK
if %CPU%== 35 goto CPUTWEAK
if %CPU%== 36 goto CPUTWEAK
if %CPU%== 37 goto CPUTWEAK
if %CPU%== 38 goto CPUTWEAK
if %CPU%== 39 goto CPUTWEAK
if %CPU%== 41 goto CPUTWEAK
if %CPU%== 42 goto CPUTWEAK
if %CPU%== 43 goto CPUTWEAK
if %CPU%== 44 goto CPUTWEAK
if %CPU%== 45 goto CPUTWEAK
if %CPU%== 46 goto CPUTWEAK
if %CPU%== 47 goto CPUTWEAK
if %CPU%== 48 goto CPUTWEAK
if %CPU%== 49 goto CPUTWEAK
if %CPU%== 50 goto CPUTWEAK
if %CPU%== 51 goto CPUTWEAK
if %CPU%== 52 goto CPUTWEAK
if %CPU%== 53 goto CPUTWEAK
if %CPU%== 54 goto CPUTWEAK
if %CPU%== 55 goto CPUTWEAK
if %CPU%== 56 goto CPUTWEAK
if %CPU%== 57 goto CPUTWEAK
if %CPU%== 58 goto CPUTWEAK
if %CPU%== 59 goto CPUTWEAK
if %CPU%== 60 goto CPUTWEAK
if %CPU%== 61 goto CPUTWEAK
if %CPU%== 62 goto CPUTWEAK
if %CPU%== 63 goto CPUTWEAK
if %CPU%== 64 goto CPUTWEAK
if %CPU%== RESET goto RESETCPU
if %CPU%== reset goto RESETCPU
if %CPU%== Reset goto RESETCPU
if %CPU%== X goto OplineMenu
if %CPU%== x goto OplineMenu
cls
goto CPU

:CPUTWEAK
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
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "RssBaseCpu" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "MaxNumRssCpus" /t REG_DWORD /d "4" /f
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/848705420213223424/optionsLC.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsLC.txt"
goto mcend2


:BP
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/828346459967586354/optionsbp.dat" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsbp.dat"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/848703914001956864/options_bp.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\options_bp.txt"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/848703915988877342/optionsofbp.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsofbp.txt"
goto mcend2

:1.7.10
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/848704001037041744/options.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\options.txt"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/848704002622881812/optionsof.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsof.txt"
(echo ofRenderDistanceChunks:6) >> optionsof.txt
(echo ofFogType:3) >> optionsof.txt
(echo ofFogStart:0.8) >> optionsof.txt
(echo ofMipmapType:0) >> optionsof.txt
(echo ofLoadFar:false) >> optionsof.txt
(echo ofPreloadedChunks:0) >> optionsof.txt
(echo ofOcclusionFancy:false) >> optionsof.txt
(echo ofSmoothFps:false) >> optionsof.txt
(echo ofSmoothWorld:false) >> optionsof.txt
(echo ofAoLevel:1.0) >> optionsof.txt
(echo ofClouds:3) >> optionsof.txt
(echo ofCloudsHeight:0.0) >> optionsof.txt
(echo ofTrees:1) >> optionsof.txt
(echo ofGrass:0) >> optionsof.txt
(echo ofDroppedItems:1) >> optionsof.txt
(echo ofRain:3) >> optionsof.txt
(echo ofWater:0) >> optionsof.txt
(echo ofAnimatedWater:0) >> optionsof.txt
(echo ofAnimatedLava:0) >> optionsof.txt
(echo ofAnimatedFire:true) >> optionsof.txt
(echo ofAnimatedPortal:false) >> optionsof.txt
(echo ofAnimatedRedstone:false) >> optionsof.txt
(echo ofAnimatedExplosion:false) >> optionsof.txt
(echo ofAnimatedFlame:false) >> optionsof.txt
(echo ofAnimatedSmoke:false) >> optionsof.txt
(echo ofVoidParticles:false) >> optionsof.txt
(echo ofWaterParticles:false) >> optionsof.txt
(echo ofPortalParticles:false) >> optionsof.txt
(echo ofPotionParticles:true) >> optionsof.txt
(echo ofFireworkParticles:false) >> optionsof.txt
(echo ofDrippingWaterLava:true) >> optionsof.txt
(echo ofAnimatedTerrain:true) >> optionsof.txt
(echo ofAnimatedTextures:true) >> optionsof.txt
(echo ofAnimatedItems:true) >> optionsof.txt
(echo ofRainSplash:false) >> optionsof.txt
(echo ofLagometer:false) >> optionsof.txt
(echo ofShowFps:false) >> optionsof.txt
(echo ofAutoSaveTicks:40000) >> optionsof.txt
(echo ofBetterGrass:3) >> optionsof.txt
(echo ofConnectedTextures:3) >> optionsof.txt
(echo ofWeather:false) >> optionsof.txt
(echo ofSky:false) >> optionsof.txt
(echo ofStars:true) >> optionsof.txt
(echo ofSunMoon:false) >> optionsof.txt
(echo ofVignette:1) >> optionsof.txt
(echo ofChunkUpdates:1) >> optionsof.txt
(echo ofChunkLoading:0) >> optionsof.txt
(echo ofChunkUpdatesDynamic:false) >> optionsof.txt
(echo ofTime:0) >> optionsof.txt
(echo ofClearWater:false) >> optionsof.txt
(echo ofDepthFog:false) >> optionsof.txt
(echo ofAaLevel:0) >> optionsof.txt
(echo ofAfLevel:1) >> optionsof.txt
(echo ofProfiler:false) >> optionsof.txt
(echo ofBetterSnow:false) >> optionsof.txt
(echo ofSwampColors:false) >> optionsof.txt
(echo ofRandomMobs:false) >> optionsof.txt
(echo ofSmoothBiomes:false) >> optionsof.txt
(echo ofCustomFonts:false) >> optionsof.txt
(echo ofCustomColors:false) >> optionsof.txt
(echo ofCustomSky:false) >> optionsof.txt
(echo ofShowCapes:true) >> optionsof.txt
(echo ofNaturalTextures:false) >> optionsof.txt
(echo ofLazyChunkLoading:false) >> optionsof.txt
(echo ofDynamicLights:3) >> optionsof.txt
(echo ofFastMath:true) >> optionsof.txt
(echo ofFastRender:true) >> optionsof.txt
(echo ofTranslucentBlocks:1) >> optionsof.txt
(echo key_Zoom:44) >> optionsof.txt
goto mcend

:1.8.9
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/848704001037041744/options.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\options.txt"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/848704002622881812/optionsof.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsof.txt"
(echo ofRenderDistanceChunks:6) >> optionsof.txt
(echo ofFogType:3) >> optionsof.txt
(echo ofFogStart:0.8) >> optionsof.txt
(echo ofMipmapType:0) >> optionsof.txt
(echo ofOcclusionFancy:false) >> optionsof.txt
(echo ofSmoothFps:false) >> optionsof.txt
(echo ofSmoothWorld:false) >> optionsof.txt
(echo ofAoLevel:1.0) >> optionsof.txt
(echo ofClouds:3) >> optionsof.txt
(echo ofCloudsHeight:0.0) >> optionsof.txt
(echo ofTrees:1) >> optionsof.txt
(echo ofDroppedItems:1) >> optionsof.txt
(echo ofRain:3) >> optionsof.txt
(echo ofAnimatedWater:0) >> optionsof.txt
(echo ofAnimatedLava:0) >> optionsof.txt
(echo ofAnimatedFire:true) >> optionsof.txt
(echo ofAnimatedPortal:false) >> optionsof.txt
(echo ofAnimatedRedstone:false) >> optionsof.txt
(echo ofAnimatedExplosion:false) >> optionsof.txt
(echo ofAnimatedFlame:false) >> optionsof.txt
(echo ofAnimatedSmoke:false) >> optionsof.txt
(echo ofVoidParticles:false) >> optionsof.txt
(echo ofWaterParticles:false) >> optionsof.txt
(echo ofPortalParticles:false) >> optionsof.txt
(echo ofPotionParticles:true) >> optionsof.txt
(echo ofFireworkParticles:false) >> optionsof.txt
(echo ofDrippingWaterLava:true) >> optionsof.txt
(echo ofAnimatedTerrain:true) >> optionsof.txt
(echo ofAnimatedTextures:true) >> optionsof.txt
(echo ofRainSplash:false) >> optionsof.txt
(echo ofLagometer:false) >> optionsof.txt
(echo ofShowFps:false) >> optionsof.txt
(echo ofAutoSaveTicks:40000) >> optionsof.txt
(echo ofBetterGrass:3) >> optionsof.txt
(echo ofConnectedTextures:3) >> optionsof.txt
(echo ofWeather:false) >> optionsof.txt
(echo ofSky:false) >> optionsof.txt
(echo ofStars:true) >> optionsof.txt
(echo ofSunMoon:false) >> optionsof.txt
(echo ofVignette:1) >> optionsof.txt
(echo ofChunkUpdates:1) >> optionsof.txt
(echo ofChunkLoading:0) >> optionsof.txt
(echo ofChunkUpdatesDynamic:false) >> optionsof.txt
(echo ofTime:0) >> optionsof.txt
(echo ofClearWater:false) >> optionsof.txt
(echo ofAaLevel:0) >> optionsof.txt
(echo ofAfLevel:1) >> optionsof.txt
(echo ofProfiler:false) >> optionsof.txt
(echo ofBetterSnow:false) >> optionsof.txt
(echo ofSwampColors:false) >> optionsof.txt
(echo ofRandomEntities:false) >> optionsof.txt
(echo ofSmoothBiomes:false) >> optionsof.txt
(echo ofCustomFonts:false) >> optionsof.txt
(echo ofCustomColors:false) >> optionsof.txt
(echo ofCustomItems:false) >> optionsof.txt
(echo ofCustomSky:false) >> optionsof.txt
(echo ofShowCapes:true) >> optionsof.txt
(echo ofNaturalTextures:false) >> optionsof.txt
(echo ofEmissiveTextures:false) >> optionsof.txt
(echo ofLazyChunkLoading:false) >> optionsof.txt
(echo ofRenderRegions:false) >> optionsof.txt
(echo ofSmartAnimations:false) >> optionsof.txt
(echo ofAlternateBlocks:false) >> optionsof.txt
(echo ofDynamicLights:3) >> optionsof.txt
(echo ofScreenshotSize:1) >> optionsof.txt
(echo ofCustomEntityModels:false) >> optionsof.txt
(echo ofCustomGuis:false) >> optionsof.txt
(echo ofShowGlErrors:true) >> optionsof.txt
(echo ofFastMath:true) >> optionsof.txt
(echo ofFastRender:true) >> optionsof.txt
(echo ofTranslucentBlocks:1) >> optionsof.txt
(echo key_of.key.zoom:44) >> optionsof.txt
goto mcend

:1.16
cls
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/848704001037041744/options.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\options.txt"
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/728982277874384916/848704002622881812/optionsof.txt" -OutFile "C:\Users\%username%\AppData\Roaming\.minecraft\optionsof.txt"
(echo ofRenderDistanceChunks:6) >> optionsof.txt
(echo ofFogType:3) >> optionsof.txt
(echo ofFogStart:0.8) >> optionsof.txt
(echo ofMipmapType:0) >> optionsof.txt
(echo ofOcclusionFancy:false) >> optionsof.txt
(echo ofSmoothFps:false) >> optionsof.txt
(echo ofSmoothWorld:false) >> optionsof.txt
(echo ofAoLevel:1.0) >> optionsof.txt
(echo ofClouds:3) >> optionsof.txt
(echo ofCloudsHeight:0.0) >> optionsof.txt
(echo ofTrees:1) >> optionsof.txt
(echo ofDroppedItems:1) >> optionsof.txt
(echo ofRain:3) >> optionsof.txt
(echo ofAnimatedWater:0) >> optionsof.txt
(echo ofAnimatedLava:0) >> optionsof.txt
(echo ofAnimatedFire:true) >> optionsof.txt
(echo ofAnimatedPortal:false) >> optionsof.txt
(echo ofAnimatedRedstone:false) >> optionsof.txt
(echo ofAnimatedExplosion:false) >> optionsof.txt
(echo ofAnimatedFlame:false) >> optionsof.txt
(echo ofAnimatedSmoke:false) >> optionsof.txt
(echo ofVoidParticles:false) >> optionsof.txt
(echo ofWaterParticles:false) >> optionsof.txt
(echo ofPortalParticles:false) >> optionsof.txt
(echo ofPotionParticles:true) >> optionsof.txt
(echo ofFireworkParticles:false) >> optionsof.txt
(echo ofDrippingWaterLava:true) >> optionsof.txt
(echo ofAnimatedTerrain:true) >> optionsof.txt
(echo ofAnimatedTextures:true) >> optionsof.txt
(echo ofRainSplash:false) >> optionsof.txt
(echo ofLagometer:false) >> optionsof.txt
(echo ofShowFps:false) >> optionsof.txt
(echo ofAutoSaveTicks:40000) >> optionsof.txt
(echo ofBetterGrass:3) >> optionsof.txt
(echo ofConnectedTextures:3) >> optionsof.txt
(echo ofWeather:false) >> optionsof.txt
(echo ofSky:false) >> optionsof.txt
(echo ofStars:true) >> optionsof.txt
(echo ofSunMoon:false) >> optionsof.txt
(echo ofVignette:1) >> optionsof.txt
(echo ofChunkUpdates:1) >> optionsof.txt
(echo ofChunkLoading:0) >> optionsof.txt
(echo ofChunkUpdatesDynamic:false) >> optionsof.txt
(echo ofTime:0) >> optionsof.txt
(echo ofClearWater:false) >> optionsof.txt
(echo ofAaLevel:0) >> optionsof.txt
(echo ofAfLevel:1) >> optionsof.txt
(echo ofProfiler:false) >> optionsof.txt
(echo ofBetterSnow:false) >> optionsof.txt
(echo ofSwampColors:false) >> optionsof.txt
(echo ofRandomEntities:false) >> optionsof.txt
(echo ofCustomFonts:false) >> optionsof.txt
(echo ofCustomColors:false) >> optionsof.txt
(echo ofCustomItems:false) >> optionsof.txt
(echo ofCustomSky:false) >> optionsof.txt
(echo ofShowCapes:true) >> optionsof.txt
(echo ofNaturalTextures:false) >> optionsof.txt
(echo ofEmissiveTextures:false) >> optionsof.txt
(echo ofLazyChunkLoading:false) >> optionsof.txt
(echo ofRenderRegions:false) >> optionsof.txt
(echo ofSmartAnimations:false) >> optionsof.txt
(echo ofAlternateBlocks:false) >> optionsof.txt
(echo ofDynamicLights:3) >> optionsof.txt
(echo ofScreenshotSize:1) >> optionsof.txt
(echo ofCustomEntityModels:false) >> optionsof.txt
(echo ofCustomGuis:false) >> optionsof.txt
(echo ofShowGlErrors:true) >> optionsof.txt
(echo ofFastMath:true) >> optionsof.txt
(echo ofFastRender:true) >> optionsof.txt
(echo ofTranslucentBlocks:1) >> optionsof.txt
(echo ofChatBackground:0) >> optionsof.txt
(echo ofChatShadow:false) >> optionsof.txt
(echo key_of.key.zoom:key.keyboard.z) >> optionsof.txt
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LanmanServer\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
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
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /t REG_DWORD /d "2" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallDay" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Wow6432Node\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "ScheduledInstallTime" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v "SearchOrderConfig" /t REG_DWORD /d "0" /f
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

:EUpdate
cls
NET START "wuauserv"
sc start wuauserv
sc config "wuauserv" start= demand
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\EOSNOTIFY.EXE" /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotification.EXE" /F
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MusNotificationUX.EXE" /F
reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /V Start /T REG_DWORD /D 3 /F
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d" /v "RegisteredWithAU" /t REG_DWORD /d "1" /f
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows\WS\Badge Update"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WS\License Validation"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows\WS\Sync Licenses"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\Windows\WS\WSRefreshBannedAppsListTask"
SCHTASKS /CHANGE /ENABLE /TN "\Microsoft\Windows\WS\WSTask"
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
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DeferUpdatePeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /V Start /T REG_DWORD /D 4 /F
Reg.exe add "HKLM\SYSTEM\ControlSet001\Services\wuauserv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Services\7971f918-a847-4430-9279-4a52d1efe18d" /v "RegisteredWithAU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "NoAutoRebootWithLoggedOnUsers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d "1" /f
SCHTASKS /END /TN "\Microsoft\Windows\Windows\WS\License Validation"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WS\License Validation"
SCHTASKS /END /TN "\Microsoft\Windows\Windows\WS\WSTask"
SCHTASKS /CHANGE /DISABLE /TN "\Microsoft\Windows\WS\WSTask"
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
echo                           лллллл  лллллл  лл      лл ллл    лл ллллллл  
echo                          лл    лл лл   лл лл      лл лллл   лл лл        
echo                          лл    лл лллллл  лл      лл лл лл  лл ллллл   
echo                          лл    лл лл      лл      лл лл  лл лл лл      
echo                           лллллл  лл      ллллллл лл лл   лллл ллллллл  
echo.       
echo.     
echo               ллллллл  лллллл  ллллллл лллллллл лл     лл  ллллл  лллллл  ллллллл
echo               лл      лл    лл лл         лл    лл     лл лл   лл лл   лл лл      
echo               ллллллл лл    лл ллллл      лл    лл  л  лл ллллллл лллллл  ллллл   
echo                    лл лл    лл лл         лл    лл ллл лл лл   лл лл   лл лл      
echo               ллллллл  лллллл  лл         лл     ллл ллл  лл   лл лл   лл ллллллл
echo.
echo.
call :ColorText 0A "                                             L I T E"
echo.
echo.
echo.
call :ColorText 1B "###############################################################################################"
echo.
echo.
cmdMenuSel f3B0 "   [+]  Enable" "   [+]  Disable" "   [+]  Exit"
if %ERRORLEVEL% == 1 goto EDefender
if %ERRORLEVEL% == 2 goto DDefender
if %ERRORLEVEL% == 3 goto OplineMenu

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
powershell.exe -command "netsh advfirewall set allprofiles state on"
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
powershell.exe -command "netsh advfirewall set allprofiles state off"
Reg.exe delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "WindowsDefender" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f
cls
SET msgboxTitle=Opline Software
SET msgboxBody=Finished - Skonczone
SET tmpmsgbox=%temp%~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
Goto Defender

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