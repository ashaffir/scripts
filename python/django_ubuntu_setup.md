# Source: https://jee-appy.blogspot.com/2017/01/deply-django-with-nginx.html
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install postgresql postgresql-contrib

sudo su - postgres

postgres@ip:$ createuser --interactive -P
...
postgres@ip:$ createdb --owner db_user django_db
postgres@ip:$ logout

apt-get install python3-venv

sudo apt-get install nginx


