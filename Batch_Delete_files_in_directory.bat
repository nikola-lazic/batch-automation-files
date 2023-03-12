@ECHO OFF
ECHO -------------------------------------------
ECHO Delete all files with predefined extension
ECHO -------------------------------------------
COLOR 0A
DEL *.bmp
PAUSE

:: For deleting files in subfolders, add /s - Subfolder
:: Example:
:: DEL /s *.bmp