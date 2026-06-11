@echo off
echo ========================================
echo Installing required Python modules...
echo ========================================
echo.

echo Installing pywin32...
python -m pip install pywin32
echo.

echo Installing requests...
python -m pip install requests
echo.

echo Running pywin32 post-install...
python -m pywin32_postinstall -install
echo.

echo ========================================
echo Installation complete!
echo ========================================
echo.
echo Press any key to test imports...
pause > nul

python -c "import os, shutil, json, base64, win32crypt, requests; print('All modules imported successfully!')"
echo.

pause