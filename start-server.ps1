$ErrorActionPreference = 'Stop'
$siteRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$port = 4173

$existing = Get-NetTCPConnection -LocalPort $port -State Listen -ErrorAction SilentlyContinue
if ($existing) { exit 0 }

$python = (Get-Command python.exe -ErrorAction SilentlyContinue).Source
if (-not $python) {
  $candidates = @(
    "$env:LOCALAPPDATA\Programs\Python\Python311\python.exe",
    "$env:LOCALAPPDATA\Programs\Python\Python312\python.exe",
    "$env:LOCALAPPDATA\Programs\Python\Python313\python.exe"
  )
  $python = $candidates | Where-Object { Test-Path $_ } | Select-Object -First 1
}
if (-not $python) { throw 'python.exe was not found. Install Python first.' }

Start-Process -FilePath $python -ArgumentList @('-m','http.server',$port,'--bind','127.0.0.1') -WorkingDirectory $siteRoot -WindowStyle Hidden
