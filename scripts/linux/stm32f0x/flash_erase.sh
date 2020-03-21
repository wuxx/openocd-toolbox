#!/bin/bash

#xxx.hex or xxx.bin

#stm32f103c8t6
FLASH_ADDR=0x08000000
FLASH_SIZE=0x00010000 #128KB

CURRENT_DIR=$(cd $(dirname $0); pwd)

CONFIG=${CURRENT_DIR}/../tcl/target/stm32f0x_cmsis_dap.cfg

sudo openocd -s ${CURRENT_DIR}/tcl -f ${CONFIG} -c \
"   init;
    halt;
    reset halt;
    flash erase_address ${FLASH_ADDR} ${FLASH_SIZE};
    shutdown;
"
