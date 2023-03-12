:: Rename all *blanks* (spaces) into _(underscore).
:: Operation will be applied to all files, no mather of extension.

@ECHO OFF
COLOR 0A
ECHO -------------------------------
ECHO Rename 'space' into underscore
ECHO -------------------------------

Setlocal enabledelayedexpansion
Set "Pattern= "
Set "Replace=_"

For %%a in (*.*) Do (
    Set "File=%%~a"
    Ren "%%a" "!File:%Pattern%=%Replace%!"
)
PAUSE