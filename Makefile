INSTALL_DIR=/etc/systemd/system/

UNITS = \
	usbipd.service \
	usbip-bind@.service

SCRIPTS = \
	configure-usbip-device.sh \
	remove-usbip-device.sh

all:

install: 
	mkdir -p $(INSTALL_DIR)
	install -m 755 usbipd.service $(INSTALL_DIR)usbipd.service
	install -m 755 usbip-bind@.service $(INSTALL_DIR)usbip-bind@.service

