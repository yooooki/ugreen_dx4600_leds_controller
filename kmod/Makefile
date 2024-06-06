TARGET = led-ugreen
obj-m += led-ugreen.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

load:
	if ! lsmod | grep led_ugreen; then insmod led-ugreen.ko; fi
	bash probe-device.sh
