@echo off
setlocal

:loop
python C:\AMFramework\Utilities\Connections\service_restart.py
if %errorlevel% neq 0 (
    echo "Python script failed with error code: %errorlevel%"
    pause
    exit /b %errorlevel%
)
timeout /t 2 /nobreak > nul
goto loop

