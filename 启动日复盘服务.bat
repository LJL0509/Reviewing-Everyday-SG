@echo off
set "ROOT=%~dp0"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%ROOT%install-autostart.ps1"
start "" http://localhost:4173/
pause
