:: Batch file to take arguments at runtime 
:: By: Darragh Murphy - L00081800
:: Initial file: 22OCT26
:: Filename: Demo6.bat
:: Based on original files by JOR

@echo off
cls
title Darragh's user prompt test
echo *******************************************
echo Welcome 
echo This batch file will do stuff
echo This is for demonstration purposes only.
echo *******************************************

set /p NAME=What is your name?
echo Your name is %NAME%

pause