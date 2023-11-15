set BUILD_PROJECT_NAME=F1_2023
set PATH=%PATH%;"C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\Bin64"
set MODDEV="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev"
set COMPILER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\MASCompiler\bin\Release\MASCompiler.exe"
set PACKAGER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\AssetPackager\bin\Release\AssetPackager.exe"
call ..\version.bat
type %BUILD_PROJECT_NAME%.rfbuild | powershell -Command "$input | ForEach-Object { $_ -replace \"BUILD_TARGET_PATH\", \"%BUILD_TARGET_PATH%\" -replace \"BUILD_TARGET_VERSION\",\"%BUILD_TARGET_VERSION%\" }" > build.rfbuild
del %BUILD_TARGET_PATH%\RFACTOR\%BUILD_PROJECT_NAME%\*.rfcmp
%COMPILER% %MODDEV%\vehicles\F1_2023\build.rfbuild -r
rem %PACKAGER% build ..\..\bin\F1_2023\F1_2023.zip %MODDEV%\vehicles\F1_2023\tracks
copy *.rcd %MODDEV%\talent
copy /Y  %MODDEV%\vehicles\F1_2023\Sounds\* ..\..\sounds\ASMG\Formula_Hybrid_22
echo Build complete
