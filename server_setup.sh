#!/usr/bin/sh

sudo apt-get install git
sudo git clone https://github.com/ashaffir/scripts.git

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install ubuntu-desktop
sudo apt-get install xfce4 xfce4-goodies tightvncserver
vncserver
vncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
cp scripts/xstartup ~/.vnc/xstartup
sudo chmod +x ~/.vnc/xstartup
sudo cp scripts/vncserver /etc/init.d/vncserver
sudo chmod +x /etc/init.d/vncserver
sudo service vncserver start

#make sure all services are running
sudo /opt/lampp/lampp start

# Installing the environment with XAMPP
#After doanloading the XAMPP from the ubuntu website:
sudo wget https://www.apachefriends.org/xampp-files/7.1.4/xampp-linux-x64-7.1.4-0-installer.run

#OR

sudo wget https://www.apachefriends.org/xampp-files/5.6.30/xampp-linux-x64-5.6.30-1-installer.run

sudo chmod +x xampp-linux-x64-5.6.30-1-installer.run 
sudo ./xampp-linux-x64-5.6.30-1-installer.run 

# OR
sudo apt-get install apache2
sudo apt-get install php5
sudo apt-get mysql-server
sudo apt-get php5-mysql
sudo /etc/init.d/apache2 restart

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
sudo apt-get install python3-pip
pip3 install git+git://github.com/davispuh/MySQL-for-Python-3

# Virtual environment
sudo pip install virtualenv
sudo virtualenv venv

# Enable locate command
sudo updatedb && locate -e bench-repo

