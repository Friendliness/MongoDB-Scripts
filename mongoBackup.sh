#!/bin/sh
cd /home/username/
mongodump --db DBName --out StoredDBName -u username -p password
rdiff-backup StoredDBName /var/backups/mongobackups/DBName.backup
