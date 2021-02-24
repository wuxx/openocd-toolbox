[中文](./README.md) [English](./README_en.md)
# openocd toolbox
* [Introduction](#introduction) 
* [How-To-Use](#how-to-use)
    * [Read](#read)
    * [Write](#write)
    * [Erase](#erase)
    * [Lock](#lock)
    * [Unlock](#unlock)
    * [Attach](#attach)
## Introduction
here are some useful scripts used with openocd and cmsis-dap based debugger
## How-To-Use
**just download the openocd-toolbox repo, and double click the script, no need to install other software or driver.**   
### Read
`flash_dump.bat`  
dump flash data, you may need to modify the filename and size in script.
****
### Write
`flash_write.bat`  
flash image into chip, you may need to modify the filename in script.
****
### Erase
`flash_erase.bat`  
erase flash.
****
### Lock
`lock.bat`  
lock the chip, after chip locked, access flash from debug port is forbiden.
****
### Unlock
`unlock.bat`  
unlock the chip, the chip internal logic will erase total flash data.
****
### Attach
`attach.bat`  
attach to target chip, can use this script to check the cable and connection.
****
