@echo off
setlocal enabledelayedexpansion
rem doxygen_template_update.bat
rem Update existing Doxygen template

rem Have Doxygen installed and within your PATH environment variable
rem http://www.doxygen.nl/download.html

rem Get current folder name
call :expand "%cd%\.."
for /f %%i in ("%ret%") do set "vpath=%%~nxi"

rem Update template
doxygen.exe -u "%vpath%.doxygen"

goto :eof

:expand
	set "ret=%~f1"
goto :eof
