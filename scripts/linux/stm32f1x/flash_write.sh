#!/bin/bash

if [ ${#1} -eq 0 ]; then
	echo "usage: $0 image-file"
    exit 0
fi

CURRENT_DIR=$(cd $(dirname $0); pwd)

#xxx.hex or xxx.bin
IMAGE_FILE=$1

#stm32f103rbt6
#FLASH_ADDR=0x08000000
#FLASH_SIZE=0x00020000

#stm32f103c8t6
FLASH_ADDR=0x08000000
FLASH_SIZE=0x00010000

#stm32f103cbt6
#FLASH_ADDR=0x08000000
#FLASH_SIZE=0x00020000


EXT="${IMAGE_FILE##*.}"
echo EXT: $EXT

if [ "${EXT}" == "hex" ]; then
    TARGET="$IMAGE_FILE"
elif [ "${EXT}" == "bin" ]; then
    TARGET="$IMAGE_FILE $FLASH_ADDR"
else
    echo "illegal suffix [$EXT]"
    exit 1
fi


CONFIG=${CURRENT_DIR}/../tcl/target/stm32f1x_cmsisdap.cfg

sudo openocd -s ${CURRENT_DIR}/tcl -f ${CONFIG} -c \
"   init;
    halt;
    reset halt;
    flash write_image erase ${TARGET};
    reset;
    shutdown;
"
