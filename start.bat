@echo off
if "%1"=="start" (
  python app.py
) else if "%1"=="stop" (
  echo 停止服务
  taskkill /F /IM python.exe /FI "WINDOWTITLE eq app.py"
) else (
  echo 用法: start.bat [start|stop]
)