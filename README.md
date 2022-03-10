**Installation Guide:**<br>
!!! tested on Ubuntu 20.04 LTS !!!<br><br>
you must have root access


<br>Step: 1. Update and Upgrade.

```
$ apt-get update && apt-get upgrade -y
```

<br>Step: 2. Install Git.

```
$ apt-get install git -y
```

<br>Step: 3. Clone Github repository.

```
$ git clone https://github.com/kreativfuchs/wakeonlan_php.git
```

<br>Step: 4. Go to "wakeonlan_php" folder.

```
$ cd wakeonlan_php
```

<br>Step: 5. Run install script.

```
$ chmod +x
$ bash install.sh
```

<br>**Config your WoL-Server:**

<br>Change the MACadress of the server to be controlled.

```
$ nano /var/www/html/server.sh
```
delete "MAC" and set in your MACadress.

<br>Change "localhost" to your server.

```
$ nano /var/www/html/shutdown.sh
```

<br>copy your SSH-Key to the server:

```
$ ssh-copy-id -i ~/.ssh/id_rsa.pub root@your_server
```

