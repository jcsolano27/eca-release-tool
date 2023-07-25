cd '..\Input\msapp'
$AppName = (Get-Item -Path "*" -Include "*.msapp").BaseName
Rename-Item -Path ".\$AppName.msapp" -NewName ".\$AppName.zip"
Expand-Archive -Path ".\$AppName.zip"
Remove-Item -Path ".\$AppName.zip"