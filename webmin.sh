#!/bin/sh

# author: NightFox

# Update
sudo apt update && apt -y upgrade

# Installation flow
sudo apt -y install software-properties-common apt-transport-https
sudo wget -q http://www.webmin.com/jcameron-key.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.webmin.com/download/repository sarge contrib"
sudo apt -y install webmin
sudo systemctl start webmin
sudo ufw allow 10000/tcp
sudo ufw reload
sudo ufw status

# End.
echo "$USER:Done!"
