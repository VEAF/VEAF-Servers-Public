# SERVER-CONFIG-DATA WINDOWS_USERNAME

$ProcessName = "dcs.exe"
$WindowTitle = "private_server"
$DCSPort = 10808
$LogfileName = "DCS-private"
$ExePath = "C:\Users\veaf\just-run-dcs.cmd"
#$ExePath = "C:\Users\veaf\refresh-opentraining-and-run-dcs.cmd"
$CommandLine = "private $WindowTitle"
#$WebHookOnFailure = "C:\Users\veaf\webhookAlerter.ps1"
$WebHookOnFailure = ""
$Priority = "HIGH"
$InitialDelay = 60
$WatchdogDelay = 30

C:/Users/veaf/watchdogDCSProcess.ps1 -ProcessName $ProcessName -WindowTitle $WindowTitle -ExePath $ExePath -CommandLine $CommandLine -DCSPort $DCSPort -WebHookOnFailure $WebHookOnFailure -Priority $Priority -LogfileName $LogfileName -InitialDelay $InitialDelay -WatchdogDelay $WatchdogDelay
