@echo off
set MSI_PATH="C:\WORK\vnc\tightvnc-2.8.85-gpl-setup-64bit.msi"

echo Upgrading VNC...

REM Check if the MSI file exists
if not exist %MSI_PATH% (
    echo Error: MSI file not found at %MSI_PATH%
    pause
    exit /b 1
)

REM Perform the upgrade using msiexec
msiexec /i %MSI_PATH% /qn /norestart

if %errorlevel% neq 0 (
    echo Error: Failed to upgrade VNC.
    pause
    exit /b 1
)

echo VNC upgrade successful.
pause
exit /b 0
