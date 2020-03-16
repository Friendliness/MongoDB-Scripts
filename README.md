# MongoDB-Scripts
A few scripts to make it easier to maintain MongoDB Databases and automate backups / removal of unnecessary backups

These are best used with cronjobs, best as a sudo-user or the root user to make sure you have enough permissions to create backups.

# To make sure you create a backup every 30 minutes:
# m h  dom mon dow   command
*/30 *  * * * /bin/sh /home/username/mongoBackup.sh

# To make sure databases older than 1 month are wiped every day at midnight:
# m h  dom mon dow   command
0 0  * * * /bin/sh /home/username/mongoWipe.sh

Don't forget to make the backup & wipe scripts executable, by doing:
chmod +x mongoBackup.sh
chmod +x mongoWipe.sh
