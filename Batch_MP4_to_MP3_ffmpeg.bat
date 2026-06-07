:: Konverzija svih MP4 fajlova u MP3 uz pomoc ffmpeg kodeka
:: Potrebno: winget install ffmpeg

@echo off
COLOR 0A
ECHO --------------------
ECHO MP4 to MP3 ffmpeg
ECHO --------------------
setlocal enabledelayedexpansion

@echo off
for %%F in (*.mp4) do (
    ffmpeg -i "%%F" -vn -acodec libmp3lame "%%~nF.mp3"
)
pause