all:
	true

install:
	mkdir -p /app/bin
	mv eclipse /app/
	ln -sf /app/eclipse/eclipse /app/bin/eclipse
	mkdir -p /app/share/appdata
	cp org.eclipse.Eclipse.appdata.xml /app/share/appdata
	mkdir -p /app/share/applications
	cp org.eclipse.Eclipse.desktop /app/share/applications
	mkdir -p /app/share/icons/hicolor/48x48/apps
	cp org.eclipse.Eclipse.png /app/share/icons/hicolor/48x48/apps
	echo "-javaagent:/app/eclipse/lombok.jar" >> /app/eclipse/eclipse.ini

.PHONY: install
