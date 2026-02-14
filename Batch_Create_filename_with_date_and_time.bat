@echo off
setlocal EnableDelayedExpansion

:: Ovo je primer dodeljivanja datume i vremena u nazivu fajla

:: Get current date and time components
for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I

:: Extract individual components
set year=%datetime:~0,4%
set month=%datetime:~4,2%
set day=%datetime:~6,2%
set hour=%datetime:~8,2%
set minute=%datetime:~10,2%
set second=%datetime:~12,2%

:: Create filename in required format
set filename=%year%-%month%-%day%_%hour%-%minute%-%second%.txt

:: Create empty file
type nul > "%filename%"

:: Check if file was created successfully
if exist "%filename%" (
    echo File created successfully: %filename%
) else (
    echo Error: Failed to create file
    exit /b 1
)

:: End script
PAUSE
exit /b 0
