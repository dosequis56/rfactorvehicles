set BUILD_PROJECT_NAME=SC2020TS
set PATH=%PATH%;"C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\Bin64"
set MODDEV="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev"
set COMPILER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\MASCompiler\bin\Release\MASCompiler.exe"
set PACKAGER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\AssetPackager\bin\Release\AssetPackager.exe"
set RCD="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\RCDTool\bin\x64\Release\net6.0\RCDTool.exe"
%RCD% writercd %MODDEV%\Vehicles\SC2020TS\%BUILD_PROJECT_NAME%.xlsx -output=%BUILD_PROJECT_NAME%.rcd -class=%BUILD_PROJECT_NAME%
copy %BUILD_PROJECT_NAME%.rcd %MODDEV%\talent
