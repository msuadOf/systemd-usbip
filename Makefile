INSTALL_DIR=/etc/systemd/system/

all:

install:install-systemd

install-service:$(INSTALL_DIR)usbipd.service $(INSTALL_DIR)usbip-bind@.service
$(INSTALL_DIR)usbipd.service:
	mkdir -p $(INSTALL_DIR)
	install -m 755 usbipd.service $(INSTALL_DIR)usbipd.service
$(INSTALL_DIR)usbip-bind@.service:
	mkdir -p $(INSTALL_DIR)
	install -m 755 usbip-bind@.service $(INSTALL_DIR)usbip-bind@.service

install-systemd:install-service
	systemctl enable usbipd
	systemctl start  usbipd 