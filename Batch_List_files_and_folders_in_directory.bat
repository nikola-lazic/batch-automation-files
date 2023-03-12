@ECHO OFF
ECHO -----------------------------------------
ECHO Create a list of all files and subfolders
ECHO -----------------------------------------
ECHO List of all files and subfolders is created!
COLOR 0A
DIR /b > List_of_all_files_and_folders.txt
PAUSE

:: NOTES:
:: For a list of all files and folders, use:
:: DIR /b

:: For a list of files, folders and files in subfolders with absolut paths, use:
:: DIR /b /s

:: For a list of all files, without folders, use:
:: DIR /b /a-d

:: For a list of all files, with files in subfolders with absolut paths, but without subfolders, use:
:: DIR /b /a-d /s

:: For a list of files with predefined extension, add for e.g. *.pdf:
:: For more extensions, add *.pdf *.mp4 *.jpg

:: DIR /b /a-d /s *.pdf
:: DIR /b /a-d /s *.pdf *.mp4 *.jpg