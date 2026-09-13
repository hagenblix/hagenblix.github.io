@echo off

set PORT=4000
set URL=http://localhost:%PORT%

echo Starting Jekyll server on %URL% ...

start "Jekyll Server" cmd /k bundle exec jekyll serve --port %PORT%

REM Give the server a few seconds to spin up before opening the browser
timeout /t 4 /nobreak >nul

echo Opening browser...
start "" "%URL%"
exit