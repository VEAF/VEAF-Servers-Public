# SERVER-CONFIG-DATA PORTS
# SERVER-CONFIG-DATA WINDOWS_USERNAME
# SERVER-CONFIG-DATA VERSIONS

#XXXRequires -RunAsAdministrator


$ProcessName = "Perun"
$WindowTitle = "\[#1\] Perun for DCS World - v0.12.1.0"
$LogfileName = "Perun-private"
$PerunPath = "C:\Users\veaf\PERUN"
$ExePath = $PerunPath + "\perun.exe"
$CommandLine = ' 10410 2 "C:\Users\veaf\Saved Games\private_server\DCS-SimpleRadio-Standalone\clients-list.json" "C:\Users\veaf\Saved Games\private_server\Mods\services\LotAtc\stats.json" 1'
$WebHookOnFailure = " "
$Priority = "BelowNormal"
$InitialDelay = 15
$WatchdogDelay = 30

C:/Users/veaf/watchdogProcess.ps1 -ProcessName $ProcessName -WindowTitle $WindowTitle -ExePath $ExePath -CommandLine $CommandLine -WebHookOnFailure $WebHookOnFailure -Priority $Priority -LogfileName $LogfileName -InitialDelay $InitialDelay -WatchdogDelay $WatchdogDelay
