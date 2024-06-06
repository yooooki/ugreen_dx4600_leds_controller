TARGET = ugreen-led
obj-m += ugreen-led.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

load:
	if ! lsmod | grep ugreen_led; then insmod ugreen-led.ko; fi
	bash probe-device.sh
