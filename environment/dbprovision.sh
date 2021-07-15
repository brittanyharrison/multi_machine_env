!#/bin/bash

# Add the MongoDB GPG key to your system
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927

# Once the key is imported, add the MongoDB repository with:
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# Refresh the local database with the packages
sudo apt-get update -y
sudo apt-get upgrade -y

# Install the last stable mongodb version and all the necessary packages
sudo apt-get install mongodb-org -y

#try to install individual packages if the above doesnt work:
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20

#sudo rm /etc/mongod.conf
#sudo ln -s /home/vagrant/environment/mongod.conf /etc/mongod.conf

sudo systemctl restart mongod

sudo systemctl enable mongod