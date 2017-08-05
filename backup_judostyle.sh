#!/bin/bash
mkdir /home/alfreds/backups/judostyle/`date +%d%m%y`
cd backups/judostyle/`date +%d%m%y`
sudo tar -czf judostyle_db.tar.gz /var/lib/mysql/judostyle_db
sudo tar -czf judostyle_website.tar.gz /opt/lampp/htdocs/judostyle/

