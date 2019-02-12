#!/bin/bash
#########################################
# To Run:
# ssl-install.sh <website URL>
#
#########################################  
cd /usr/local/sbin
wget https://dl.eff.org/certbot-auto
chmod a+x /usr/local/sbin/certbot-auto
apt-get install python-letsencrypt-apache
sudo apt-get update
apt-get install python3-certbot-apache
add-apt-repository ppa:certbot/certbot
apt-get update
apt-get install python-certbot-apache
sudo certbot --apache -d $1 -d www.$1

echo "END OF SCRIPT"
