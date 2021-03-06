#!/bin/bash

    
sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get install nginx -y

sudo apt-get systemctl restart nginx

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

sudo apt-get install -y nodejs

sudo apt-get install -y npm

sudo apt-get install python-software-properties -y

sudo npm install -g pm2

sudo npm install -y

sudo npm install express

sudo npm install mongoose

sudo npm install ejs

sudo npm install faker

#sudo node seeds/seed.js

#sed is an editor, -i is inserting, $:at thte end of file, a:appending
sudo sed -i "$ a DB_HOST='mongodb://192.168.10.150:27017/posts'" /etc/environment


cd /home/vagrant/environment/app

npm start 