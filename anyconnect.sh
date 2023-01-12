#!/bin/sh

# author: NightFox

# Update
sudo apt update && apt -y upgrade

# Installation flow
# download AnyConnect-Server(Cisco) installation from git
wget -N --no-check-certificate https://raw.githubusercontent.com/sfc9982/AnyConnect-Server/main/ocserv-en.sh
chmod +x ocserv-en.sh
mv ocserv-en.sh /root/ocserv-en.sh

# add alias for AnyConnect
echo "
# AnyConnect alias
alias oc='bash /root/ocserv-en.sh'
" >> /root/.bashrc

# End.
echo "$USER:Done!"
