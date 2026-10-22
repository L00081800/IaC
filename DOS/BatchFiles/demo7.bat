:: Batch file to demonstrate conditional branching 
:: By: Darragh Murphy - L00081800
:: Initial file: 22OCT26
:: Filename: Demo7.bat
:: Based on original files by JOR

@echo off
cls
title Darragh’s Find a File
echo *******************************************
echo This batch file will do stuff
echo This is for demonstration purposes only.
echo *******************************************

SET ospath=C:\Windows\
SET filename=notepad.exe

If exist %ospath%%filename% echo %filename% exists 