SYMFONY_PREFIX=${CURDIR}/debian/openapp-symfony

install:
# bin
	mkdir -p $(SYMFONY_PREFIX)/etc
	cp -r etc/* $(SYMFONY_PREFIX)/etc

uninstall:
# bin
	rm -rf $(SYMFONY_PREFIX)

clean:
	-echo "NOP"

 

