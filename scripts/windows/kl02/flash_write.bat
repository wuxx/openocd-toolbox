::若烧录hex文件，请将 "flash_image.bin 0x08000000" 改成 "flash_image.hex"

..\..\..\OpenOCD-20190426-0.10.0\bin\openocd.exe ^
    -f ..\..\..\OpenOCD-20190426-0.10.0\tcl\target\kl02_cmsisdap.cfg ^
    -c "init;halt;reset halt;flash write_image erase flash_image.bin 0x08000000;shutdown;"
pause
