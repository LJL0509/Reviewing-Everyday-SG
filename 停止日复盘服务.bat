@echo off
set "ROOT=%~dp0"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%ROOT%stop-server.ps1"
echo 已停止日复盘服务。
pause
