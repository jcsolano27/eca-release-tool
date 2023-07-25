cd '..\Input\msapp'
$AppName = Get-ChildItem -Directory -Exclude "NewMSAPP", "*RECYCLE.BIN" -Name
$NewMSAPP = ".\NewMSAPP"
New-Item -ItemType Directory -Path $NewMSAPP
Compress-Archive -Path ".\$AppName\*" -DestinationPath "$NewMSAPP\$AppName.zip" -Update
Rename-Item -Path "$NewMSAPP\$AppName.zip" -NewName $AppName".msapp"