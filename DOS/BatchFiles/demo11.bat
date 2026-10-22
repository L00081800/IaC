:: Batch file to demonstrate loops 
:: By: Darragh Murphy - L00081800
:: Initial file: 22OCT26
:: Filename: Demo11.bat
:: Based on original files by JOR


@echo off
cls
title Darragh's file and directory counter
echo *******************************************
echo This batch file will do stuff
echo This is for demonstration purposes only.
echo *******************************************

:: Iterate through all the files in the current directory
echo Analysing %CD%
FOR %%I IN (*) DO @ECHO Filename=%%I
echo *******************************************
:: The environment variable USERPROFILE points at the users home folder
echo Analysing %USERPROFILE% for directories
FOR /D %%I IN (%USERPROFILE%"\*") DO @ECHO %%I
echo *******************************************