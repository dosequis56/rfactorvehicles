set BUILD_PROJECT_NAME=SCNG23
set PATH=%PATH%;"C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\Bin64"
set MODDEV="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev"
set COMPILER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\MASCompiler\bin\Release\MASCompiler.exe"
set PACKAGER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\AssetPackager\bin\Release\AssetPackager.exe"
set RCD="D:\Games\steamapps\common\rFactor 2\ModDev\Tools\RCDTool\bin\Release\net8.0-windows8.0\RCDTool.exe"
%RCD% writercd %MODDEV%\Vehicles\SCNG2023\%BUILD_PROJECT_NAME%.xlsx -output=%BUILD_PROJECT_NAME%.rcd,%BUILD_PROJECT_NAME%-AI.rcd -class=%BUILD_PROJECT_NAME%,%BUILD_PROJECT_NAME%-AI

