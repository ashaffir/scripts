#!/bin/sh

# Check Apache status and start it if its dead/inactive.

# To run this script every minute via cron:

# * * * * * sh /home/$USER/apache_monitor.sh

STARTAPACHE="systemctl start apache2"
LOGFILE="/home/$USER/autostart-apache2.log"

#check for the word inactive in the result of status
if systemctl status apache2 | grep -q inactive
then
echo "starting apache at $(date)" >> $LOGFILE
$STARTAPACHE >> $LOGFILE
else
echo "apache is running at $(date)"
fi