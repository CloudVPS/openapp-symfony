PREFIX=${CURDIR}/debian/openapp-symfony

install:
# bin
	mkdir -p $(PREFIX)/etc
	cp -r etc/* $(PREFIX)/etc

uninstall:
# bin
	rm -rf $(PREFIX)

clean:
	-echo "NOP"

 

