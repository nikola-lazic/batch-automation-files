@echo off
setlocal enabledelayedexpansion

COLOR 0A
ECHO ======================================================================
ECHO Ova skripta kreira stringove koji se koriste kod pinescript Screenera
ECHO ======================================================================
ECHO.
ECHO 1. Treba imati input.csv sadrzi stringove
ECHO 2. Rezultati ce biti generisani u output.csv fajlu
ECHO.
ECHO Rezultat ce biti spisak svih stringova sa brojacem koji ide od s01 do s40, u sledecem obliku:
ECHO   s01 = input.symbol('SUIUSDT.P', group = 'Parovi', inline = 's01') 
ECHO   s02 = input.symbol('ETHUSDT.P', group = 'Parovi', inline = 's02') 
ECHO   s03 = input.symbol('BTCUSDT.P', group = 'Parovi', inline = 's03') 
ECHO.
ECHO.

:inputagain
:: Unos maksimalnog broja iteracija za brojac
set /p maxCount="Unesite maksimalan broj stringova u setu (celobrojni broj): "

:: Provera da li je unet celobrojni broj
if not defined maxCount (
    echo Uneli ste nevazecu vrednost. Molimo ponovite unos.
    goto inputagain
)
for /f "delims=0123456789" %%a in ("%maxCount%") do (
    echo Uneli ste nevazecu vrednost. Molimo ponovite unos.
    goto inputagain
)

:: Inicijalizacija output fajla
echo. > output.csv

:: Citanje svih redova iz input.csv fajla
:: Preskakanje prvog reda
set count=1
for /f "tokens=*" %%i in ('more +1 input.csv') do (
    :: Resetuj brojac kada dostigne maxCount
    if !count! GTR !maxCount! (
        set count=1
        echo. >> output.csv
        echo. >> output.csv
    )
    
    set "string=%%i"
    
    :: Zadrzavanje samo prvog dela stringa pre prvog zareza
    for /f "delims=," %%j in ("!string!") do set "string=%%j"
    
    :: Formatiraj brojac kao dvocifreni broj
    if !count! LSS 10 (set "formattedCount=0!count!") else (set "formattedCount=!count!")
    
    :: Dodaj prefiks i sufiks sa brojacem
    set "prefix=s!formattedCount! = input.symbol('"
    set "suffix=', group = 'Parovi', inline = 's!formattedCount!')"
    set "newstring=!prefix!!string!!suffix!"
    
    :: Zapisi novi string u output.csv
    echo !newstring! >> output.csv
    
    :: Povecaj brojac
    set /a count+=1
)

:end
endlocal
pause
