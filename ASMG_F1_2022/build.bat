set PATH=%PATH%;"C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\Bin64"
set MODDEV="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev"
set COMPILER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\MASCompiler\bin\Release\MASCompiler.exe"
set PACKAGER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\Tools\AssetPackager\bin\Release\AssetPackager.exe"
%COMPILER% %MODDEV%\vehicles\ASMG_F1_2022\ASMG_F1_2022.rfbuild -r
%PACKAGER% build ..\bin\ASMG_F1_2022\ASMG_F1_2022.zip %MODDEV%\vehicles\ASMG_F1_2022\tracks
copy ASMG_FH22.rcd %MODDEV%\talent
echo Build complete
