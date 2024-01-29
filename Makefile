DESTDIR		?= ~
REPO			= https://github.com/Koenkk/zigbee2mqtt.git
VERSION		= 1.35.1

all:

src:
	git clone --depth 1 -b $(VERSION) $(REPO) src
	cd src; rm -drf .git data/configuration.yaml

install: src
	install -vd $(DESTDIR)/usr/share/zigbee2mqtt
	cp -r src/* $(DESTDIR)/usr/share/zigbee2mqtt

vclean:
	rm -rdf src
	