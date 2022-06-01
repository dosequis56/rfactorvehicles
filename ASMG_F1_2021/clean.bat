set PATH=%PATH%;"C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\Bin64"
set MODDEV="C:\Program Files (x86)\Steam\steamapps\common\rFactor 2\ModDev"
del /F %MODDEV%\vehicles\ASMG_F1_2021\bin\*.mas
del /F %MODDEV%\vehicles\ASMG_F1_2021\bin\*.rfcmp
del /F %MODDEV%\vehicles\ASMG_F1_2021\bin\*.zip
rem del /F %MODDEV%\vehicles\ASMG_F1_2021\bin\hash\*.hash
echo "clean complete"


