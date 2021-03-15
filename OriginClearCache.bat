@ECHO OFF
SETLOCAL
SET "sourcedir=%programdata%\Origin"
SET "keepdir=LocalContent"
SET "sourcedirect=%localappdata%\Origin"

tasklist /FI "IMAGENAME eq Origin.exe" 2>NUL | find /I /N "Origin.exe">NUL
if "%ERRORLEVEL%"=="0" GOTO originrunning

FOR /d %%a IN ("%sourcedir%\*") DO IF /i NOT "%%~nxa"=="%keepdir%" RD /S /Q "%%a

FOR /d %%a IN ("%sourcedirect%\*") DO IF /i NOT "%%~nxa"=="%keepdir%" RD /S /Q "%%a"

msg %username% Done!
GOTO end

:originrunning
msg %username% Origin is running. No files removed. Close Origin before running this script.
GOTO end

:end
EXIT
