@echo off
title Crack Windows 10!
cls
color 09
:: STARTs THE SCRIPT
cls
goto check_Permissions
exit

:: Checks if the script run with admin permissions
:check_Permissions
    net session >nul 2>&1
    if %errorLevel% == 0 (
        goto start
    ) else (
        goto noperms
    )
    pause >nul
pause
exit





:: No permisssion message
:noperms
color c
cls
echo ###########################################################
echo #
echo # Sorry, you must run the script with administrator permissions.
echo # Try to close and right-click this file, than choose: "Run as administrator"
echo #
echo ###########################################################
pause
exit





:: Runs the activator
:start
cls
echo ###########################################################
echo #
echo # I'm not liable for damages of any kind! 
echo # Cracking Windows is illegal and not recommended.
echo # This script resets all current licenses and activates the desired Windows 10 version.
echo #
echo # Inspired by: DianoteHD (https://kutt.it/DianoteHD)
echo # Icon by: Itzik Gur (https://kutt.it/ItzikGur)
echo # 
echo ###########################################################
set /p accept=Enter "acc3pt" to confirm: 
if %accept%==acc3pt goto confirmed
cls
color c
echo ###########################################################
echo #
echo # Wrong!
echo #
echo ###########################################################
timeout 5
goto start
exit
:confirmed
cls
color 9
echo ###########################################################
echo #
echo # If dialogues appear confirm with Enter. We now delete the license of this computer.
echo #
echo ###########################################################
pause
cls
slmgr /upk
slmgr.vbs /cpky
slmgr /ckms
slmgr.vbs /ckms
slmgr /skms localhost
cls
echo ###########################################################
echo #
echo # Done! License removed.
echo # 
echo ###########################################################
timeout 5
cls

:: Runs the choose version dialoge
:version
cls
echo ###########################################################
echo #
echo # Please Enter The Number (1,2,3, ...) of your current Windows version below:
echo # --- --- ---
echo # (1) Windows 10 Home 
echo # (2) Windows 10 Professional 
echo # (3) Windows 10 Professional N
echo # (4) Windows 10 Enterprise
echo # (5) Windows 10 Enterprise N
echo # (6) Windows 10 Education 
echo # (7) Windows 10 Education N
echo # (8) Windows 10 Enterprise 2015 LTSB 
echo # (9) Windows 10 Enterprise 2015 LTSB N
echo # (10) Activate your windows with your own key!
echo # --- --- ---
echo ###########################################################
set /p version=Please select your current Windows version: 
if %version% ==1 goto 1
if %version% ==2 goto 2
if %version% ==3 goto 3
if %version% ==4 goto 4
if %version% ==5 goto 5
if %version% ==6 goto 6
if %version% ==7 goto 7
if %version% ==8 goto 8
if %version% ==9 goto 9
if %version% ==10 goto 10
cls
echo ###########################################################
echo #
echo # Try again.... (1, 2, 3, 4...)
echo #
echo ###########################################################
timeout 5
goto version
exit


:: SET THE NEW KEY
cls
:1
set key=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
goto set
:2
set key=W269N-WFGWX-YVC9B-4J6C9-T83GX
goto set
:3
set key=MH37W-N47XK-V7XM9-C7227-GCQG9
goto set
:4
set key=NPPR9-FWDCX-D2C8J-H872K-2YT43
goto set
:5
set key=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
goto set
:6
set key=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
goto set
:7
set key=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
goto set
:8
set key=WNMTR-4C88C-JK8YV-HQ7T2-76DF9
goto set
:9
set key=2F77B-TNFGY-69QQF-B8YKP-D69TJ
goto set
:10
echo ###########################################################
echo #
echo # Please enter your custom key in the following format:
echo # (#####-#####-#####-#####-#####)
echo # (12345-12345-12345-123456-12345)
echo #
echo ###########################################################
set /p key=Enter your custom key here:  
goto set

:: 

:set
cls
echo ###########################################################
echo #
echo # Nice! Your Windows key is "%key%". We'll activate your Windows now! 
echo # It can take up to several minutes.
echo #
echo ###########################################################
pause
cls
slmgr /ipk %key%
slmgr /skms kms.digiboy.ir
slmgr /ato
cls
echo ###########################################################
echo #
echo # If this script runs as an administrator, your Windows should now be activated! Congratulations! :(
echo # or.... 
echo # If not I'm sorry. I can not help you! :(
echo #
echo ###########################################################
pause
echo Fun-Fact: This is not your new license key: "%random%-%random%-%random%-%random%-%random%" its random! :)
pause
