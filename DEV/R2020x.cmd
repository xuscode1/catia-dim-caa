@echo off
cd /d %~dp0

Rem ============================================================================================
Rem CATIA 3DEXPERIENCE installation path
Rem ============================================================================================

IF EXIST "C:\Program Files\Dassault Systemes\B422" set CAT_CODE=C:\Program Files\Dassault Systemes\B422
IF EXIST "D:\Program Files\Dassault Systemes\B422" set CAT_CODE=D:\Program Files\Dassault Systemes\B422
IF EXIST "E:\DassaultSystemes\B422" set CAT_CODE=E:\DassaultSystemes\B422
IF EXIST "F:\B422" set CAT_CODE=F:\B422
IF EXIST "D:\001_Apps\DS-APP\CATApps\B422" set CAT_CODE=D:\001_Apps\DS-APP\CATApps\B422

SET CheckCODE=false
If NOT DEFINED CAT_CODE SET CheckCODE=true
IF NOT EXIST "%CAT_CODE%" SET CheckCODE=true
IF %CheckCODE%==true ( 
ECHO CAT_CODE hasn't been set well, please set it to right CATIA installation path first! 
ECHO Please contact administrator. 
PAUSE
EXIT
)
Rem ============================================================================================
Rem set caa code env 
Rem ============================================================================================
IF NOT EXIST C:\Temp MD	C:\Temp

set CAT_CODE_0=C:\Users\Public\Documents\Dassault Systemes\UserCache\B422
set CAT_CODE_1=%~dp0\CATApps\B422
set CAT_CODE_2=%~dp0\CATApps\B422_Addin_dim
set CAT_CODE_3=
set CAT_CODE_4=
set CAT_CODE_5=
set CAT_CODE_6=

Rem ============================================================================================
Rem Start of CATIA
Rem ============================================================================================
::"%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "3DEXPERIENCE" -env Env_B422 -direnv %~dp0\CATEnv -nowindow
"%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "3DEXPERIENCE" -env V6Env -direnv %~dp0\CATEnv -nowindow
pause

::"%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "3DEXPERIENCE" -env V6Env -direnv "%CAT_CODE%\CATEnv" -nowindow
::"%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "V6ForSupport" -object 3DEXPERIENCE -env V6Env -direnv "%CAT_CODE%\CATEnv" -nowindow
::"%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "CATUTIL" -env V6Env -direnv "%CAT_CODE%\CATEnv" -nowindow
::"%CAT_CODE%\CAADoc\win_b64.doc\DSDoc.htm"
::"%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "CATIAENV" -env V6Env -direnv "%CAT_CODE%\CATEnv" -nowindow
::"%CAT_CODE%\win_b64\code\bin\DSLicMgt.exe" -env V6Env -direnv "%CAT_CODE%\CATEnv" -nowindow
::"%CAT_CODE%\win_b64\code\bin\CATSTART.exe" -run "CATPreferenceMgt" -env V6Env -direnv "%CAT_CODE%\CATEnv" -nowindow
::"%CAT_CODE%\InstallData\installer\setup.exe" --mgt "C:\Program Files\Dassault Systemes\B422"
