$siteRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$processes = Get-CimInstance Win32_Process -Filter "Name = 'python.exe'" -ErrorAction SilentlyContinue |
  Where-Object { $_.CommandLine -like "*http.server 4173*" -and $_.CommandLine -like "*$siteRoot*" }
foreach ($process in $processes) {
  Stop-Process -Id $process.ProcessId -Force -ErrorAction SilentlyContinue
}
