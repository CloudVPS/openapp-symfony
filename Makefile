PREFIX=${CURDIR}/debian/openapp-symfony

install:
# bin
	mkdir -p $(PREFIX)/etc
	cp -r etc/* $(PREFIX)/etc
	mkdir -p $(PREFIX)/usr/bin
	ln -s /usr/bin/openapp-phpmyadmin-passwd $(PREFIX)/usr/bin/openapp-symfony-passwd


uninstall:
# bin
	rm -rf $(PREFIX)

clean:
	-echo "NOP"

 

