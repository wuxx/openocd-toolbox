..\..\..\OpenOCD-20190426-0.10.0\bin\openocd.exe -f ..\..\OpenOCD-20190426-0.10.0\tcl\target\stm32f0x_cmsisdap.cfg -c "init;halt;reset halt;stm32f1x unlock 0;shutdown;"
pause
