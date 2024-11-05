#!/bin/sh
TIMESTAMP=$(date +"%F")
BACKUP_DIR="/mnt/backups/ghost/$TIMESTAMP"
mkdir -p "$BACKUP_DIR"

# Back up Ghost content
cp -r /var/lib/ghost/content "$BACKUP_DIR"

# Dump MySQL database
mysqldump -h db -u root -p"${DB_PASSWORD}" ghost > "$BACKUP_DIR/ghost_db.sql"

# Remove backups older than 4 weeks, keeping only the last 4
find /mnt/backups/ghost -maxdepth 1 -type d -mtime +28 -exec rm -rf {} +