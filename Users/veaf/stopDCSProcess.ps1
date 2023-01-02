#Requires -RunAsAdministrator

param (
    [Parameter(Mandatory, Position=0)]
    [string] $ProcessName,

    [Parameter(Mandatory, Position=1)]
    [string] $WindowTitle
)

$processId = Get-WmiObject Win32_Process -Filter "name = '$ProcessName'" | Where-Object CommandLine -Match "-w $WindowTitle" | Select-Object ProcessId
write-host ("processId = " + $processId)
if ($processId) {
	$process = Get-Process -Id $processId.ProcessId -ErrorAction SilentlyContinue
} else {
	$process = Get-Process -Id -1 -ErrorAction SilentlyContinue
} 
write-host ("process = " + $process)

if ($process) {
	write-host ("Process " + $ProcessName + " found. Stopping it")
	Stop-Process $process
}
