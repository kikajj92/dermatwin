@echo off
echo ============================================
echo   DermaTwin HFUS Analyzer - Local Server
echo ============================================
echo.

:: Try Node.js serve
where node >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Starting server at http://localhost:4173 ...
    echo Press Ctrl+C to stop.
    echo.
    npx --yes serve -s . -l 4173
    goto :eof
)

:: Try Python
where python >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    echo Starting server at http://localhost:4173 ...
    echo Press Ctrl+C to stop.
    echo.
    python -m http.server 4173
    goto :eof
)

echo [ERROR] Node.js or Python required.
echo Install Node.js from https://nodejs.org/
pause
