# SERVER-CONFIG-DATA WINDOWS_USERNAME

# Delete files older than a specific number of days, and then delete all the empty folders
function DeleteOldFiles {
	param (
		[Parameter(Mandatory, Position=0)]
		[string] $RootFolder = ".",

		[Parameter(Position=1)]
		[int] $MaxAgeInDays = 5
	)

	$limit = (Get-Date).AddDays(-$MaxAgeInDays)
	$path = $RootFolder
	
	Write-Host "Deleting files in" $path "older than" $limit

	# Delete files older than the $limit.
	Get-ChildItem -Path $path -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.LastWriteTime -lt $limit } | Remove-Item -Force

	# Delete any empty directories left behind after deleting the old files.
	Get-ChildItem -Path $path -Recurse -Force | Where-Object { $_.PSIsContainer -and $null -eq (Get-ChildItem -Path $_.FullName -Recurse -Force | Where-Object { !$_.PSIsContainer })  } | Remove-Item -Force -Recurse

}
while (1) {
	# TacView ACMI recordings
	DeleteOldFiles -RootFolder "c:\Users\veaf\Documents\Tacview\private" -MaxAgeInDays 3
	DeleteOldFiles -RootFolder "c:\Users\veaf\Documents\Tacview\private2" -MaxAgeInDays 3
	DeleteOldFiles -RootFolder "c:\Users\veaf\Documents\Tacview\public" -MaxAgeInDays 3
	DeleteOldFiles -RootFolder "c:\Users\veaf\Documents\Tacview\public2" -MaxAgeInDays 3
	
	# DCS server logs
	DeleteOldFiles -RootFolder "c:\Users\veaf\Saved Games\private_server\Logs" -MaxAgeInDays 5
	DeleteOldFiles -RootFolder "c:\Users\veaf\Saved Games\private2_server\Logs" -MaxAgeInDays 5
	DeleteOldFiles -RootFolder "c:\Users\veaf\Saved Games\public_server\Logs" -MaxAgeInDays 5
	DeleteOldFiles -RootFolder "c:\Users\veaf\Saved Games\public2_server\Logs" -MaxAgeInDays 5
	
	# DCS server track files
	DeleteOldFiles -RootFolder "c:\Users\veaf\Saved Games\private_server\Tracks\Multiplayer" -MaxAgeInDays 2

	# start again in 6 hours
	Write-Host ""
	Write-Host "Sleeping for 6 hours"
  Start-Sleep -Seconds 21600
}

