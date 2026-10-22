:: Batch file to demonstrate variables
:: By: Darragh Murphy - L00081800
:: Initial file: 22OCT26
:: Filename: Demo4.bat
:: Based on original files by JOR

@echo off
cls
title Darragh's variable test
echo *******************************************
echo This batch file will do stuff
echo This is for demonstration purposes only.
echo *******************************************

echo *** About to do something critical ***
echo *** press [ctrl][c] to exit or any key to continue ***
pause 

SETLOCAL

SET clonepath=C:\Users\student\Documents\Github\IaC\DOS\Batchfiles\
SET clonename=UB1604-04JAN18.vmx
echo Path to Clone is %clonepath%%clonename%

SET /A calculation=2+12/4
echo We got %calculation%

ENDLOCAL

echo *** Batch file completed successfully ***
pause

EXIT