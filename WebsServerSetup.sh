#!/bin/bash

# Installing Dependencies
echo "##########################################"
echo "Installing Packages"
echo "##########################################"
sudo apt instll unzip
sudo apt update -y > /dev/null
sudo apt install wget unzip apache2 -y > /dev/null
echo

# Start & Enable Service
echo "#############################################"
echo "Start & Enable Apache Service"
echo "#############################################"
sudo systemctl start apache2
sudo systemctl enable apache2
echo

# Creating Temp Directory
echo "#############################################"
echo "Starting Artifact Deployment"
echo "#############################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html/

# Bounce Service
echo "#############################################"
echo "Restarting Apache"
echo "#############################################"
sudo systemctl restart apache2
echo

# Clean Up
echo "#############################################"
echo "Removing Temporary Files"
echo "#############################################"
rm -rf /tmp/webfiles

sudo systemctl status apache2
ls /var/www/html/

# apt install net-tools
# ifconfig
# u can access the webserver by using the public ip addr of the ec2 instance -- curl ifconfig.me
# sudo ss -tulnp | grep :80 -- to check whether the apache2 webserver is running or not
