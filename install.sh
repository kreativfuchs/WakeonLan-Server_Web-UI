apt-get update && apt-get upgrade -y
apt-get install apache2 php libapache2-mod-php -y
rm /var/www/html/index.html
cp config/* /var/www/html/
apt install python -y
chmod +x /var/www/html/wake.py
python /var/www/html/wake.py
echo -e "ALL ALL=NOPASSWD: /var/www/html/shutdown.sh" >> /etc/sudoers
ssh-keygen -t rsa -b 4096
cat done.txt
