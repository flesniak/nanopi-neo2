#!/bin/bash

if [ -e "uboot-with-spl.bin" ] ; then
  # created with cat spl/sunxi-spl.bin u-boot.itb >u-boot-with-spl.bin
  dd if=u-boot-with-spl.bin of=/dev/sdc bs=8k seek=1
else
  dd if=spl/sunxi-spl.bin of=/dev/sdc bs=8k seek=1
  dd if=u-boot.itb of=/dev/sdc bs=8k seek=5
fi
