# SERVER-CONFIG-DATA PORTS
# SERVER-CONFIG-DATA WINDOWS_USERNAME
# SERVER-CONFIG-DATA VERSIONS

#XXXRequires -RunAsAdministrator

$ProcessName = "SR-Server"
$WindowTitle = "DCS-SRS Server - 2.0.7.1 - 10406"
$LogfileName = "SRS-private"
$ExePath = "C:\Program Files\DCS-SimpleRadio-Standalone\SR-Server.exe"
$CommandLine = ' -cfg="C:\Users\veaf\Saved Games\private_server\DCS-SimpleRadio-Standalone\server.cfg"'
$WebHookOnFailure = " "
$Priority = "NORMAL"
$InitialDelay = 15
$WatchdogDelay = 30

C:/Users/veaf/watchdogProcess.ps1 -ProcessName $ProcessName -WindowTitle $WindowTitle -ExePath $ExePath -CommandLine $CommandLine -WebHookOnFailure $WebHookOnFailure -Priority $Priority -LogfileName $LogfileName -InitialDelay $InitialDelay -WatchdogDelay $WatchdogDelay
