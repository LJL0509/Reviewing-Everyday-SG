@echo off
set "ROOT=%~dp0"
powershell.exe -NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File "%ROOT%start-server.ps1"
start "" http://localhost:4173/
