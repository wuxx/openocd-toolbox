::若烧录hex文件，请将 "flash_image.bin 0x00080000" 改成 "flash_image.hex"

::copy F:\private\cmsis-dap-wireless\software\v6.1\usb-hid\host\dap-host-sam3u2c\DAPLink-HID-1024\projectfiles\uvision\sam3u2c_mkit_dk_dongle_nrf5x_if\build\sam3u2c_mkit_dk_dongle_nrf5x_if.hex .
..\..\..\OpenOCD-20190426-0.10.0\bin\openocd.exe ^
    -f ..\..\..\OpenOCD-20190426-0.10.0\tcl\target\sam3u2c_cmsisdap.cfg ^
    -c "init;halt;reset halt;flash write_image erase flash_image.bin 0x00080000;shutdown;"
pause
