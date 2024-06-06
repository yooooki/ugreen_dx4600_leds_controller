#!/usr/bin/bash

set -e

if ! lsmod | grep i2c-dev; then
    modprobe -v i2c-dev
fi

i2c_dev=$(i2cdetect -l | grep "SMBus I801 adapter" | grep -Po "i2c-\d+")

if [ $? = 0 ]; then 
        echo "Found I2C device /dev/${i2c_dev}"
        echo "ugreen-led 0x3a" > /sys/bus/i2c/devices/${i2c_dev}/new_device
else
        echo "I2C device not found!"
fi
