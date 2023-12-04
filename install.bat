:: ||||||||||||||||||||||||||||||||||||||
:: |||   Community-Sandbox installer  |||
:: |||          By: CPScript          |||
:: ||||||||||||||||||||||||||||||||||||||

:: THIS MOST DEFFENTLY NEEDS INPROVEMENT

@echo off
setlocal

echo Hello, world!
cls
echo Please dont close this window if you want to install Community Sandbox
timeout /t 5 /nobreak >nul
echo Installing python, please wait...
timeout /t 2 /nobreak >nul

cls
color E1

:: install python

set "URL2=https://www.python.org/ftp/python/3.9.7/python-3.12.0-amd64.exe"

set "INSTALLER_PATH2=%USERPROFILE%\Desktop\python-installer.exe"

curl -L -o "%INSTALLER_PATH2%" "%URL2%"


cls
echo Please install python.
start /d "%USERPROFILE%\Desktop" python-installer.exe

echo you have 50 seconds to install python before this script contenues...
timeout /t 50 /nobreak >nul

del python-installer.exe
cls

color 0F

:: install the rest

echo Thank you for setting up python, sence it is required to run the game.
timeout /t 2 /nobreak >nul

echo We will now install the game, launcher, and setup script...
echo Please wait...
timeout /t 2 /nobreak >nul 

set "URL=https://github.com/CPScript/Community-Sandbox/releases/download/v1.0.0/setup.exe"

set "INSTALLER_PATH=%USERPROFILE%\Desktop\setup.exe"

curl -L -o "%INSTALLER_PATH%" "%URL%"

python -m pip install -r requirements.txt

cls
echo - Community Sandbox has now been installed!
echo - This is the BETA version and is just a place for you to walk around in and enjoy.
echo -
echo - This game is ment for the community so make changes to the script and upload the changes
echo - To: https://gitbu.com/CPScript/Community-Sandbox/issues
echo - Or: Add forum page here
echo -
echo - If your script is good enuff/game changing i will add it to the game permanintly
echo - Follow CPScript on github for more cool scripts
echo -
echo -\  YOU MAY NOW RUN "setup.exe"  / 
echo -/-------------------------------\
timeout /t 60

endlocal
