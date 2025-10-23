<#
    .SYNOPSIS
        Deletes user temp files older than one day. Cleans out Google chrome temporary files.
        This script only operates on the currently logged in user.
#>

$logdate = Get-date
$days="1"
$lastWrite = $logdate.AddDays(-$Days)

$tempDir = "$env:userprofile\AppData\Local\Temp\*"


$tempFiles = Get-ChildItem -Path $tempDir -recurse

foreach ($files in $tempFiles) 
{  
    if ($files.LastWriteTime -lt $lastWrite)
    {     
        Remove-item $files.FullName -recurse -force
    }
}

#Chrome cleanup portion
$items = @('Archived History','Cache\*','Cookies','Media Cache','Top Sites','Visited Links','Web Data')
$folder = "$($env:LOCALAPPDATA)\Google\Chrome\User Data\Default"

foreach ($item in $items) {
    if (Test-Path "$folder\$item") {
        Remove-Item "folder\$item" -recurse
    }
}
