$ErrorActionPreference = 'Stop'
$siteRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$launcher = Join-Path $siteRoot 'start-server.ps1'
$runCommand = "powershell.exe -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$launcher`""
$runKey = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Run'
reg.exe add $runKey /v 'Reviewing-Everyday Local Server' /t REG_SZ /d $runCommand /f | Out-Null
& $launcher
Write-Output 'Autostart installed.'
Write-Output 'URL: http://localhost:4173'
