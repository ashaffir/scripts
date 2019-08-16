#!/bin/bash
TIME=`date +%b-%d-%y`                      # This Command will read the date.
FILENAME=backup-admfactory-$TIME.tar.gz    # The filename including the date.
SRCDIR=/var/www/html                       # Source backup folder.
DESDIR=/backup                             # Destination of backup file.
tar -cpzf $DESDIR/$FILENAME $SRCDIR


#########
## Use the following to change the crontab file for the executiion of the script:
## crontab -e
## M H DOM M DOW CMND
## To back up every day at 4am:
# 00 04 * * * /bin/bash /backup.sh
