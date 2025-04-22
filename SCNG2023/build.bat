set BUILD_PROJECT_NAME=SCNG2023
set PATH=%PATH%;"C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\Bin64"
set MODDEV="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev"
set COMPILER="C:\Program Files\Saberace\RFactorTools\RFBuild.exe"
set COMPILER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\RFBuild\bin\Release\net8.0-windows8.0\RFBuild.exe"
call ..\version.bat
del %BUILD_TARGET_PATH%\RFACTOR\%BUILD_PROJECT_NAME%\*.rfcmp
%COMPILER% %MODDEV%\vehicles\SCNG2023\SCNG2023.rfbuild -r -source=Vehicles\%BUILD_PROJECT_NAME% -target=%BUILD_TARGET_PATH%\RFACTOR\%BUILD_PROJECT_NAME% -v=%BUILD_TARGET_VERSION%
echo Build complete
