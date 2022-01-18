set PATH=%PATH%;"C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\Bin64"
set MODDEV="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev"
set COMPILER="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev\bin\MASCompiler.exe"
%COMPILER% %MODDEV%\vehicles\ASMG_F1_2021\ASMG_F1_2021.rfbuild %1
echo Build complete


