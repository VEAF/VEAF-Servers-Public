rem SERVER-CONFIG-DATA WINDOWS_USERNAME

@echo off
rem ----------------------------------------
set SERVERNAME=%1
IF [%SERVERNAME%] == [] GOTO ErrorServerName
goto NoErrorServerName
:ErrorServerName
echo ERROR : the server name ("public" or "private") is a mandatory parameter
exit
:NoErrorServerName

set WINDOWSTITLE=%2
IF [%WINDOWSTITLE%] == [] GOTO ErrorWindowsTitle
goto NoErrorWindowsTitle
:ErrorWindowsTitle
echo ERROR : the windows title (e.g. "private_server_2.5.6") is a mandatory parameter
exit
:NoErrorWindowsTitle

set SERVERSETTINGS=%3
IF [%SERVERSETTINGS%] == [] GOTO DefaultServerSettings
goto NoErrorWindowsTitle
:DefaultServerSettings
set SERVERSETTINGS=serverSettings-%SERVERNAME%-default
:NoDefaultServerSettings
echo SERVERSETTINGS = %SERVERSETTINGS%

echo refreshing OpenTraining missions on %SERVERNAME% server
cd C:\Users\veaf\Saved Games\DCS.missions
call refresh-opentraining.cmd %SERVERNAME%

echo editing server settings file on %SERVERNAME% server
cd "C:\Users\veaf\Saved Games\%WINDOWSTITLE%\config"
call veaf-tools select-mission "serverSettings-default.lua" "serverSettings.lua" "serverCron.json"

echo running %SERVERNAME% DCS server
set DCS_EXE="C:\DCS World OpenBeta Server\bin\dcs.exe"
set ARGS=--server --norender -w %WINDOWSTITLE%
set COMMANDLINE=%DCS_EXE% %ARGS%
echo running %COMMANDLINE%
%COMMANDLINE%
