..\..\..\OpenOCD-20190426-0.10.0\bin\openocd.exe -f ..\..\..\OpenOCD-20190426-0.10.0\tcl\target\stm32f4x_cmsisdap.cfg -c "init;halt;reset halt;dump_image flash_image_dump.bin 0x08000000 0x20000;shutdown;"
pause
