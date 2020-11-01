
..\..\..\OpenOCD-20190426-0.10.0\bin\openocd.exe ^
    -f ..\..\..\OpenOCD-20190426-0.10.0\tcl\target\lfe5u25f_cmsisdap.cfg ^
    -c "init;scan_chain;svf -tap ecp5.tap -quiet -progress blink.svf;exit;"
pause
