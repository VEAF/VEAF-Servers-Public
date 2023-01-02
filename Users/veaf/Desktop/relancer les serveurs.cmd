@echo off
rem SERVER-CONFIG-DATA WINDOWS_USERNAME

echo starting PRIVATE server
start "" "C:\Users\veaf\Desktop\Surveillance PRIVATE.lnk"
timeout 1
echo starting PRIVATE SRS
start "" "C:\Users\veaf\Desktop\Surveillance SRS PRIVATE.lnk"
timeout 1
echo starting PRIVATE PERUN
start "" "C:\Users\veaf\Desktop\Surveillance PERUN PRIVATE.lnk"
timeout 1

echo starting the old files cleaning tool
start call "C:\Users\veaf\Desktop\deleteOldFiles.cmd"

exit

