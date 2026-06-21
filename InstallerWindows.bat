@echo off 
echo After the installation is done, the window will close itself, DO NOT close it yourself or else this would break the launcher
pause

winget install --id Python.Python.3.11 -e --accept-source-agreements --accept-package-agreements

winget install --id Git.Git -e --accept-source-agreements --accept-package-agreements
:wait_python
py -0 | find "3.11" >nul
if errorlevel 1 (
    timeout /t 2 >nul
    goto wait_python
)

py -3.11 -m pip install --upgrade pip
py -3.11 -m pip install pygame

if exist Bleach-Rebirth-of-Souls-Community-Patch (
	rmdir /s /q Bleach-Rebirth-of-Souls-Community-Patch
)

git clone https://github.com/Nilsix/Bleach-Rebirth-of-Souls-Community-Patch.git


