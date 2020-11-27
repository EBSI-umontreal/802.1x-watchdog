IF "%PROCESSOR_ARCHITEW6432%"=="" GOTO native
%SystemRoot%\Sysnative\cmd.exe /c %0 %*
exit
:native
SET defaultUserFolder=%SystemDrive%\Users\Default


REM ************** INSTALL/UNINSTALL **************
REM ## INSTALL/UNINSTALL PROGRAM ##
MKDIR "%ProgramFiles(x86)%\EBSI\802.1x-watchdog"
COPY "%~dp0802.1x-watchdog.bat" "%ProgramFiles(x86)%\EBSI\802.1x-watchdog" /Y
COPY "%~dp0802.1x-watchdog.ps1" "%ProgramFiles(x86)%\EBSI\802.1x-watchdog" /Y
schtasks /create /ru "SYSTEM" /sc minute /mo 5 /tn "802.1x-watchdog" /tr "%ProgramFiles(x86)%\EBSI\802.1x-watchdog\802.1x-watchdog.bat"


REM ## ADJUSTMENTS ##


REM ## STARTMENU ##


REM ******************** FILES ********************


REM **************** HKLM REGISTRY ****************


REM ************ DEFAULT USER REGISTRY ************
PAUSE