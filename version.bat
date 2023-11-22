REM Generate the build version to use for the Package
REM
powershell -command (Get-Date -format yyyy-MMddHHmmss) > version.txt
set /p BUILD_TARGET_VERSION= < version.txt
del version.txt
echo Project version is %BUILD_TARGET_VERSION%

