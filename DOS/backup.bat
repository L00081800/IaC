:: Batch file to demonstrate Backup Script 
:: By: Darragh Murphy - L00081800
:: Initial file: 23OCT26
:: Filename: Backup.bat


@echo off
cls
title Darragh's Backup script
echo *******************************************
echo This batch file will back up files into a dated folder
echo This is for demonstration purposes only.
echo Date format: DDMMMYY
echo Sets backup files to read-only
echo *******************************************

setlocal

:: Set source and backup locations
set "source=%~dp0Data"
set "backup=%~dp0Backups"

:: Check if the Data folder exists
if not exist "%source%\" (
    echo Data folder not found: %source%
    pause
    exit /b 1
)

:: Create the Backups folder if necessary
if not exist "%backup%\" mkdir "%backup%"

:: Today's date in DDMMMYY format
for /f %%A in ('powershell -NoProfile -Command "(Get-Date).ToString('ddMMMyy',[cultureinfo]::GetCultureInfo('en-US')).ToUpper()"') do (
    set "today=%%A"
)

:: Check that the date was created
if not defined today (
    echo Error getting today's date
    pause
    exit /b 1
)

:: Specify the dated backup folder
set "destination=%backup%\%today%"

:: Create the dated backup folder
if not exist "%destination%\" mkdir "%destination%"

:: Copy all files from Data to the dated folder
echo *******************************************
echo Starting backup for %today%
echo *******************************************

xcopy "%source%\*" "%destination%\" /E /I /Y

:: Check if the copy was successful
if errorlevel 1 (
    echo Backup failed
    pause
    exit /b 1
)

:: Set all backed-up files to read-only
attrib +R "%destination%\*" /S

if errorlevel 1 (
    echo Error setting read-only attributes
    pause
    exit /b 1
)

:: Display completion message
echo *******************************************
echo Backup completed successfully
echo Backup saved to: %destination%
echo Files set to read-only
echo *******************************************

endlocal
pause
exit /b 0
