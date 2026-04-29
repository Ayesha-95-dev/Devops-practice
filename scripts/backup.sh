#!/bin/bash

# Variables
SOURCE=~/devops-practice
BACKUP_DIR=~/backups
DATE=$(date +%Y-%m-%d)
BACKUP_NAME="backup-$DATE"

# Create backup folder if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir -p "$BACKUP_DIR"
    echo "Created backup directory: $BACKUP_DIR"
fi

# Do the backup
echo "Starting backup..."
cp -r "$SOURCE" "$BACKUP_DIR/$BACKUP_NAME"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup successful!"
    echo "Saved to: $BACKUP_DIR/$BACKUP_NAME"
else
    echo "Backup FAILED!"
fi
