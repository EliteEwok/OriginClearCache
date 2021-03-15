@ECHO OFF
SETLOCAL
SET "sourcedir=%programdata%\Origin"
SET "keepdir=LocalContent"
SET "sourcedirect=%localappdata%\Origin"

FOR /d %%a IN ("%sourcedir%\*") DO IF /i NOT "%%~nxa"=="%keepdir%" RD /S /Q "%%a"

FOR /d %%a IN ("%sourcedirect%\*") DO IF /i NOT "%%~nxa"=="%keepdir%" RD /S /Q "%%a"

EXIT
