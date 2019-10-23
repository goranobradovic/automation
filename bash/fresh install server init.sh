#set/change password
sudo passwd username

#set hostname
sudo hostnamectl set-hostname newhostname

# update
sudo -- sh -c 'apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get autoremove -y; apt-get autoclean -y'

#webmin
echo "deb https://download.webmin.com/download/repository sarge contrib" | sudo tee -a /etc/apt/sources.list
sudo -- sh -c 'cd /root; wget http://www.webmin.com/jcameron-key.asc; apt-key add jcameron-key.asc; apt-get install apt-transport-https; apt-get update; apt-get install webmin -y'

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

