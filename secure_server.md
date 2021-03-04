# Add user and use it and not Root
sudo adduser <username>

# Add the user to sudo
sudo visudo 
- Copy the "root" line with the new user 

or: https://linuxize.com/post/how-to-add-user-to-sudoers-in-ubuntu/

# Remove Password login capability
sudo vi /etc/ssh/sshd_config

sudo service sshd restart

- Change PasswordAuthentication to "no"

# Add web permissions (if running from www dir)
sudo chown -R www-data:www-data /var/www
sudo chmod -R  g+rwX /var/www
sudo adduser <user> www-data

# Secure the SSH/22 port
sudo apt-get install fail2ban
sudo systemctl status fail2ban
