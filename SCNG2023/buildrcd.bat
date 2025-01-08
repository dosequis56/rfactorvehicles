set BUILD_PROJECT_NAME=SCNG23
set PATH=%PATH%;"C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\Bin64"
set MODDEV="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev"
set COMPILER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\MASCompiler\bin\Release\MASCompiler.exe"
set PACKAGER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\AssetPackager\bin\Release\AssetPackager.exe"
set RCD="C:\Program Files\Saberace\RFactorTools\RCDTool.exe"
%RCD% writercd %MODDEV%\Vehicles\SCNG2023\%BUILD_PROJECT_NAME%.xlsx -output=%BUILD_PROJECT_NAME%.rcd -class=%BUILD_PROJECT_NAME%
copy %BUILD_PROJECT_NAME%.rcd %MODDEV%\talent
