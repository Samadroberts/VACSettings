
QPROCESS "audiorepeater.exe">NUL
IF %ERRORLEVEL% EQU 0 GOTO KILL
IF %ERRORLEVEL% EQU 1 GOTO STARTUP
:KILL
taskkill /FI "WINDOWTITLE eq AudioVC" /F
TASKKILL /FI "WINDOWTITLE eq MICVC" /F
:STARTUP
START /min /d "C:\Program Files\Virtual Audio Cable" audiorepeater.exe /WindowName:"MICVC" /Input:"Line 1 (Virtual Audio Cable)" /Output:"Speakers (Logitech G633 Gaming" /ChanCfg:"7.1 surround" /AutoStart
START /min /d "C:\Program Files\Virtual Audio Cable" audiorepeater.exe /WindowName:"AudioVC" /Input:"Microphone (Logitech G633 Gamin" /Output:"Line 2 (Virtual Audio Cable)" /ChanCfg:"7.1 surround" /AutoStart