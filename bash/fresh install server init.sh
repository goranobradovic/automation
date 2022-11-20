#set/change password
sudo passwd username

#set hostname
sudo hostnamectl set-hostname newhostname

# update
sudo -- sh -c 'apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get autoremove -y; apt-get autoclean -y'

#webmin
echo "deb https://download.webmin.com/download/repository sarge contrib" | sudo tee -a /etc/apt/sources.list
sudo -- sh -c 'cd /root; wget http://www.webmin.com/jcameron-key.asc; apt-key add jcameron-key.asc; apt-get install apt-transport-https; apt-get update; apt-get install webmin -y'

#webmin official https://doxfer.webmin.com/Webmin/Installation#apt_.28Debian.2FUbuntu.2FMint.29
wget -qO - http://www.webmin.com/jcameron-key.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list'
sudo apt update
sudo apt install webmin

#to (re)start webmin
sudo /etc/init.d/webmin restart

#nginx
sudo apt-get install nginx -y
#webmin nginx module https://www.justindhoffman.com/project/nginx-webmin-module

#perl dependencies
sudo apt-get install libhtml-parser-perl -y

#certbot
sudo apt-get install certbot -y
sudo apt-get install python-certbot-nginx
sudo certbot nginx

#nodejs
curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install npm@latest -g


#mysql 
sudo apt-get install mysql-server -y
mysql_secure_installation

#read temp
cat /sys/class/thermal/thermal_zone0/temp

#php
sudo apt install php php-cli php-fpm php-json php-mysql php-zip php-gd  php-mbstring php-curl php-xml php-pear php-bcmath

#docker
curl -fsSL https://get.docker.com | sh

#for docker macvlans need to install these kernel extras
sudo apt install linux-modules-extra-raspi

#CIFS installation (for backups/mounting nas drives)
sudo apt-get install cifs-utils

#import database
mysql -u username -p dbname < data-dump.sql
