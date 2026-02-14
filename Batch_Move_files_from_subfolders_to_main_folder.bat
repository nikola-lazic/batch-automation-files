:: Ova skripta pomera sve fajlove iz svih podfoldera u glavni folder 

@echo off
COLOR 0A
ECHO ---------------------------------------------------
ECHO Move all files from all subfolders into main folder
ECHO ---------------------------------------------------
setlocal enabledelayedexpansion

REM Postavlja trenutni direktorijum kao radni direktorijum
set "source_dir=%CD%"

REM Iterira kroz sve poddirektorijume u radnom direktorijumu
for /R "%source_dir%" %%d in (.) do (
    if "%%d" neq "%source_dir%" (
        REM Iterira kroz sve fajlove u trenutnom poddirektorijumu
        for %%f in ("%%d\*.*") do (
            REM Premesta fajl u roditeljski direktorijum
            move "%%f" "%source_dir%"
        )
    )
)

PAUSE
