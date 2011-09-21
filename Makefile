PREFIX=${CURDIR}/debian/openapp-symfony

install:
# bin
	mkdir -p $(PREFIX)/etc
	cp -r etc/* $(PREFIX)/etc
	mkdir -p $(PREFIX)/usr/bin
	ln -s /usr/bin/openapp-phpmyadmin-passwd $(PREFIX)/usr/bin/openapp-symfony-passwd

#man
	mkdir -p $(PREFIX)/usr/share/man/man1
	ln -s /usr/share/man/man1/openapp-phpmyadmin-passwd.1.gz $(PREFIX)/usr/share/man/man1/openapp-symfony-passwd.1.gz

uninstall:
# bin
	rm -rf $(PREFIX)

clean:
	-echo "NOP"

 

