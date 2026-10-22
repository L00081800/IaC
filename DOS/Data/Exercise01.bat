:: Demo batch file to show a header and banner
:: By: Darragh Murphy
:: Filename: Demo1.bat
:: Automatically repeats the directory operations carried out manually. 
:: The REM lines are comments documenting the purpose of each command, 
:: and pause allows you to inspect the results.

@echo off

REM Q1: Go to home directory
cd /d "%USERPROFILE%"

REM Q2: Create CLI directory
if not exist "CLI" mkdir CLI

REM Q3: Change directory to CLI
cd CLI

REM Q4: Create Backup directory
if not exist "Backup" mkdir Backup

REM Q5: Create Test directory
if not exist "Test" mkdir Test

REM Q6: Return to home directory
cd /d "%USERPROFILE%"

REM Q7: Display directory tree
tree CLI
pause

REM Q8: Delete Test directory
cd CLI
rmdir Test
tree
pause

REM Q9: Move up one directory
cd ..
cd
pause