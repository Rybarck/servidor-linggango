@echo off
title Linggango RPG - Minecraft Forge Server
if not exist "run.bat" (
  echo Forge ainda nao foi instalado nesta pasta.
  echo Execute: java -jar forge-1.20.1-47.4.20-installer.jar --installServer
  pause
  exit /b 1
)
call run.bat nogui
pause
