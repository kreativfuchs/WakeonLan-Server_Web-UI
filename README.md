# wakeonlan_php
WakeonLan Server on RaspberryPi and Other
WakeonLan Anleitung

benötigete Daten:

Mac und IP Adresse des zu steuernden Gerätes,
root Zugang auf WakeonLan-Server und Zielgerät,

(als WakeonLan-Server empfehle ich einen RaspberryPi)



1. Erster Schritt, Installation von apache2 und php

$ sudo apt-get install apache2 php7.2 libapache2-mod-php7.2

2. gehe zu /var/www/ und lade herunter

$ cd /var/www/
$ git
$ sudo chmod +x wake.py
$ python wake.py

3. Bearbeite server.php

$ nano server.php

entferne „MAC“ und setze die Mac adresse deines zu Starten/Shutdown Geräts ein.

4. Bearbeite shutdown.sh

$ nano shutdown.sh

ändere die SSH Verbindung zu der deines Geräts

5. shutdown.sh in Sudouser eunfügen

$ nano /etc/sudoers

füge am ende hinzu:
$ ALL ALL=NOPASSWD: /var/www/shutdown.sh

6. SSH Key erstellen

$ ssh-keygen -t rsa -b 4096

bei Passwordabfrage frei lassen und Enter drücken

$ ssh-copy-id -i ~/.ssh/id_rsa.pub root@your_server
