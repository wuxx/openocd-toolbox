..\..\..\OpenOCD-20190426-0.10.0\bin\openocd.exe ^
    -f ..\..\..\OpenOCD-20190426-0.10.0\tcl\target\sam3u2c_cmsisdap.cfg ^
    -c "init;halt;reset halt;dump_image flash_image_dump.bin 0x00080000 0x00020000;shutdown;"
pause

