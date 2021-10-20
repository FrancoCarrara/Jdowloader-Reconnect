@ECHO OFF
Set JDownloader="C:\Path\To\Your\JDownloader\Executable"
Set FileName=all.txt

:Connect
echo Connect to VPN
Set "proxlist=%~dp0%FileName%
For /F "Tokens=1* Delims=:" %%a In ('FindStr/N "^" "%proxlist%"') Do (
Set "line[%%a]=%%b"
Set "total=%%a"
)
Set/A "rand=(%RANDOM%%%total)+1"
Call Set "randline=%%line[%rand%]%%"
cd "C:\Program Files\NordVPN\"
echo Connecting to %randline%
nordvpn -c -g "%randline%"
TIMEOUT /T 30
GOTO CheckInternet

:CheckInternet
echo Checking internet connection
Ping 1.1.1.1 -n 1 -w 1000
if errorlevel 1 (GOTO Connect) else (GOTO Download)

:Download
taskkill /IM JDownloader2.exe /F
cd %JDownloader%
start JDownloader2.exe
TIMEOUT /T 800
GOTO Connect
