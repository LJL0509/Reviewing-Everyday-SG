$runKey = 'HKCU\Software\Microsoft\Windows\CurrentVersion\Run'
reg.exe delete $runKey /v 'Reviewing-Everyday Local Server' /f 2>$null | Out-Null
& (Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) 'stop-server.ps1')
Write-Output 'Autostart removed and server stopped.'
