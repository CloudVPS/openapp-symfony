OA_PREFIX=${CURDIR}/debian/openapp-symfony
OP_PREFIX=${CURDIR}/debian/openpanel-openapp-mod-symfony
OP_SOURCE=${CURDIR}/openpanel-openapp-mod-symfony

build:
	mkmodulexml < ${OP_SOURCE}/module.def > ${OP_SOURCE}/module.xml
	convert -modulate 50,100,100 ${OP_SOURCE}/symfony.png ${OP_SOURCE}/down_symfony.png
	convert ${OP_SOURCE}/wallpaper.png ${OP_SOURCE}/wallpaper.jpg

install:
# bin
	mkdir -p $(OA_PREFIX)/etc
	cp -r etc/* $(OA_PREFIX)/etc

	mkdir -p ${OP_PREFIX}/var/openpanel/modules/OpenAppSymfony.module
	mkdir -p ${OP_PREFIX}/var/openpanel/wallpaper
	mkdir -p ${OP_PREFIX}/var/openpanel/http/images
	install -m 755 ${OP_SOURCE}/action ${OP_PREFIX}/var/openpanel/modules/OpenAppSymfony.module/action
	cp ${OP_SOURCE}/module.xml ${OP_PREFIX}/var/openpanel/modules/OpenAppSymfony.module/module.xml
	cp ${OP_SOURCE}/*.png ${OP_PREFIX}/var/openpanel/modules/OpenAppSymfony.module/
	mv ${OP_PREFIX}/var/openpanel/modules/OpenAppSymfony.module/logo.png ${OP_PREFIX}/var/openpanel/http/images/OpenPanelLogo.png
	cp ${OP_SOURCE}/wallpaper.jpg ${OP_PREFIX}/var/openpanel/wallpaper/default.jpg
	install -m 755 ${OP_SOURCE}/verify ${OP_PREFIX}/var/openpanel/modules/OpenAppSymfony.module/verify

uninstall:
# bin
	rm -rf $(OA_PREFIX)
	rm -rf $(OP_PREFIX)

clean:
	-echo "NOP"

 

