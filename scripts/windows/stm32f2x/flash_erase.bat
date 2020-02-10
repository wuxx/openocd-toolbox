..\..\..\OpenOCD-20190426-0.10.0\bin\openocd.exe -f ..\..\..\OpenOCD-20190426-0.10.0\tcl\target\stm32f2x_cmsisdap.cfg -c "init;halt;reset halt;flash erase_address 0x08000000 0x10000;shutdown;"
pause
