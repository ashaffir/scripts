#!/usr/bin/sh

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install ubuntu-desktop
sudo apt-get install xfce4 xfce4-goodies tightvncserver
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
cp scripts/xstartup ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
sudo cp scripts/vncserver /etc/init.d/vncserver
sudo chmod +x /etc/init.d/vncserver
sudo service vncserver start

#make sure all services are running
sudo /opt/lampp/lampp start

#After doanloading the XAMPP from the ubuntu website:
sudo wget https://www.apachefriends.org/xampp-files/7.1.4/xampp-linux-x64-7.1.4-0-installer.run
sudo chmod +x xampp-linux-x64-5.6.30-1-installer.run 
sudo ./xampp-linux-x64-5.6.30-1-installer.run 

# If requred DVWA:
wget http://www.computersecuritystudent.com/SECURITY_TOOLS/DVWA/DVWAv107/lesson1/DVWA-1.0.7.zip

# MySQL setting(install the below because the XAMPP comes with a MariaDB)
sudo apt-get install mysql-client
sudo apt-get install mysql-server

echo "################"
echo "# Open the ports in the Network Security group of Azure, in the Inbound Security Rules"
echo "###############"

sudo apt-get install python3-dev
sudo apt-get install libmysqlclient-dev
pip3 install git+git://github.com/davispuh/MySQL-for-Python-3

# Virtual environment
sudo pip install virtualenv
sudo virtualenv venv


