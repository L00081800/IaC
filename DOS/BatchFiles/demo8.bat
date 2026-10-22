:: Demo batch file to configure something 
:: By: Darragh Murphy - L00081800
:: Initial file: 22OCT26
:: Filename: Demo8.bat
:: Based on original files by JOR

@echo off
cls
title Darragh’s Error level tester
echo *******************************************
echo This batch file will do stuff
echo This is for demonstration purposes only.
echo *******************************************

SET ospath=C:\Windows\
SET filename=DoesNotExist.exe

:: The temp variable is defined globally for every user
Copy %ospath%%filename% %TEMP%

IF %ERRORLEVEL% NEQ 0 (
 echo The error level was %ERRORLEVEL% and that did not work.
)