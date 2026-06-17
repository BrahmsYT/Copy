@echo off

set ZIP=project.zip
set DEST=%USERPROFILE%\Desktop\Project

:: Qovluğu yarat
if not exist "%DEST%" mkdir "%DEST%"

:: ZIP-i Desktop-a çıxart
powershell -command "Expand-Archive -Path '%~dp0%ZIP%' -DestinationPath '%DEST%' -Force"

:: VS Code-da aç
code "%DEST%"

exit