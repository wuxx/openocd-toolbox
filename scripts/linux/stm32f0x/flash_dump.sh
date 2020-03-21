#!/bin/bash

#xxx.hex or xxx.bin


#stm32f070f6p6
FLASH_ADDR=0x08000000
FLASH_SIZE=0x00008000 #32KB

CURRENT_DIR=$(cd $(dirname $0); pwd)

CONFIG=${CURRENT_DIR}/../tcl/target/stm32f0x_cmsisdap.cfg

sudo openocd -f ${CONFIG} -c \
"   init;
    halt;
    reset halt;
    dump_image flash_image_dump.bin ${FLASH_ADDR} ${FLASH_SIZE}
    shutdown;
"
