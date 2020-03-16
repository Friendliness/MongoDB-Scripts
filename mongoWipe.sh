#!/bin/sh
# Removes Backups older than 1 Month
cd /home/username/
rdiff-backup --force --remove-older-than 1M /var/backups/mongobackups/DiscordDB.backup
