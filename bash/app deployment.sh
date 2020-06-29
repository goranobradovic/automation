#create user
sudo adduser devuser

sudo mkdir -p ~devuser/.ssh
touch $HOME/.ssh/authorized_keys
sudo sh -c "cat $HOME/.ssh/authorized_keys >> ~devuser/.ssh/authorized_keys"
sudo chown -R devuser: ~devuser/.ssh
sudo chmod 700 ~devuser/.ssh
sudo sh -c "chmod 600 ~devuser/.ssh/*"


# install git
sudo apt-get install -y git

#pull code
sudo mkdir -p /var/www/myapp
sudo chown devuser: /var/www/myapp

cd /var/www/myapp
sudo -u devuser -H git clone git://github.com/username/myapp.git code

#login as user
sudo -u myappuser -H bash -l

#install dependencies
cd /var/www/myapp/code
npm install --production

#fixing-npm-node-gyp-error-not-found-make-on-ubuntu.sh
sudo apt install build-essential