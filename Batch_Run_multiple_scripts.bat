@ECHO OFF
COLOR 0A
ECHO ----------------------------------------
ECHO This script will run predefined scripts
ECHO ----------------------------------------

:: Run scripts one after another
call script_1.bat
call script_2.bat

:: Run all scripts, no matter if the previous has finished the job
START /b script_11.bat
START /b script_22.bat