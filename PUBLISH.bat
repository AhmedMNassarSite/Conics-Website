@echo off
REM ============================================================
REM  CONICS website - one-click publisher
REM  Double-click this file after editing index.html to push
REM  your changes live to https://conics.me
REM ============================================================
cd /d "%~dp0"

echo.
echo ============================================
echo   Publishing CONICS website to conics.me
echo ============================================
echo.

REM Stage every change in this folder
git add -A

REM Commit with a timestamp (skips cleanly if nothing changed)
git commit -m "Update site - %DATE% %TIME%"
if errorlevel 1 (
  echo.
  echo No changes to publish ^(or commit skipped^).
)

echo.
echo Pushing to GitHub...
git push origin main

echo.
echo ============================================
echo   Done. GitHub Pages will rebuild in ~1 min.
echo   Then refresh https://conics.me
echo ============================================
echo.
pause
