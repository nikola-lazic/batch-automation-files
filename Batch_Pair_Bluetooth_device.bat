@ECHO OFF
COLOR 0B
ECHO --------------------------------------------------
ECHO Bluetooth pairing with Samsung Soundbar T6-Series
ECHO --------------------------------------------------
ECHO Pairing...

:: It is necessary to define a name of BT device:
set DEVICE_NAME=[AV] Samsung Soundbar T6-Series

:: Pairing is here:
btpair -p -n "%DEVICE_NAME%"

ECHO Samsung Soundbar T6-Series is paired!
ECHO Script will be closed...
timeout /t 3

:: It's necessary to have Bluetooth Command Line Tools installed.