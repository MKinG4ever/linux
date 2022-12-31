#!/bin/sh

# author: NightFox

# Update
sudo apt update && apt -y upgrade

# NightFox alias (Global)
#
echo "
# NightFox alias
alias q='exit'
alias ..='clear'
alias py='python3'
alias lp='echo;ls -a1FguvX;echo;pwd;echo;'
alias srv='service --status-all'
alias srx='service --status-all | grep "+"'
" >> /root/.bashrc
# >> /home/$USER/.bashrc

# Basic apt packages to install
#
# tree
# nmap
# net-tools(ifconfig)
# mlocate(locate)
# macchanger
# htop
# python3
# vim
# git
apt -y install tree nmap net-tools mlocate macchanger htop python3 vim git

# Servers
#
# FTP -> vsftp
# PPTP -> pptpd
# Apache -> apache2
apt -y install vsftpd pptpd apache2

# PHP packages
apt -y install php libapache2-mod-php php-cli php-cgi php-mysql php-pgsql
 
# all-in-one (for easy copy)
# apt -y install tree nmap net-tools mlocate macchanger htop python3 vim git vsftpd pptpd apache2 php libapache2-mod-php php-cli php-cgi php-mysql php-pgsql


# End of process.
# presentation
echo "$USER:Done!"
# init 6 - Reboot the machine
# init 0 - Power-off the machine
reboot
