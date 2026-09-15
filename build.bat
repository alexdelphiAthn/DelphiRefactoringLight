@echo off
call "C:\Program Files (x86)\Embarcadero\Studio\37.0\bin\rsvars.bat"
cd /d "%~dp0"
if not exist DCU mkdir DCU
msbuild Packages\DelphiRefactoringLight.dproj /t:Build /p:Config=Debug /p:Platform=Win32 /v:minimal
echo.
echo Exit Code: %ERRORLEVEL%
