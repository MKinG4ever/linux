#!/bin/sh

# author: NightFox

# Update
sudo apt update && apt -y upgrade

# Installation flow
# download openvpn installation from git
wget https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh
mv openvpn-install.sh /root/openvpn-install.sh

# add alias for OpenVPN
echo "
# OpenVPN alias
alias op='bash /root/openvpn-install.sh'
" >> /root/.bashrc

# End.
echo "$USER:Done!"
