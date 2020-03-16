# MongoDB-Scripts
A few bash scripts to make it easier to maintain MongoDB Databases and automate backups / removal of unnecessary backups

These are best used with cronjobs, best as a sudo-user or the root user to make sure you have enough permissions to create backups.


These scripts assume you have `MongoDB` and `rdiff-backup` installed.

__Cronjob to make sure you create a backup every 30 minutes:__
`*/30 *  * * * /bin/sh /home/username/mongoBackup.sh`

__Cronjob to make sure databases older than 1 month are wiped every day at midnight:__
`0 0  * * * /bin/sh /home/username/mongoWipe.sh`

Don't forget to make the backup & wipe scripts executable, by doing:
`chmod +x mongoBackup.sh`
`chmod +x mongoWipe.sh`
