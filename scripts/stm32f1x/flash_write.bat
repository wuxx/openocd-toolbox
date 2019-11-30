..\..\OpenOCD-20190426-0.10.0\bin\openocd.exe ^
    -f ..\..\OpenOCD-20190426-0.10.0\tcl\target\stm32f1x_cmsisdap.cfg ^
    -c "init;halt;reset halt;flash write_image erase stm32f103xb_bl.bin 0x08000000;shutdown;"
pause
