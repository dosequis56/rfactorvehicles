set BUILD_PROJECT_NAME=SC2020TS
set PATH=%PATH%;"C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\Bin64"
set MODDEV="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev"
set COMPILER="C:\Program Files\Saberace\RFactorTools\RFBuild.exe"
set PACKAGER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\AssetPackager\bin\Release\AssetPackager.exe"
call ..\version.bat
type %BUILD_PROJECT_NAME%.rfbuild | powershell -Command "$input | ForEach-Object { $_ -replace \"BUILD_TARGET_PATH\", \"%BUILD_TARGET_PATH%\" -replace \"BUILD_TARGET_VERSION\",\"%BUILD_TARGET_VERSION%\" }" > build.rfbuild
del %BUILD_TARGET_PATH%\RFACTOR\%BUILD_PROJECT_NAME%\*.rfcmp
%COMPILER% %MODDEV%\vehicles\SC2020TS\build.rfbuild -r
copy *.rcd %MODDEV%\talent
echo Build complete
