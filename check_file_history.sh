# Check the file system for the root of the file ('/')
df -h

# Get the INODE of the file
ls -i trackers_ts/2018_11_13_tracker_ts.csv

# Get the information
#                       INODE       File System
sudo debugfs -R 'stat <10140787>' /dev/sda1


