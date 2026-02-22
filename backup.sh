#!/bin/bash
PROJECT_DIR="/home/devps-user/devops-project/smart-backup"
SOURCE_DIR="$PROJECT_DIR/source"
BACKUP_DIR="$PROJECT_DIR/backup"
LOG_DIR="$PROJECT_DIR/logs"
LOG_FILE="$LOG_DIR/backup.log"

mkdir -p "$SOURCE_DIR"
mkdir -p "$BACKUP.DIR"
mkdir -p "$LOG_DIR"

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

echo "Backup started at $DATE" >> $LOG_FILE

if [ -d "$SOURCE_DIR" ]; then
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
echo "Backup successful: $BACKUP_FILE" >> $LOG_FILE
else
echo "Backup failed!" >> $LOG_FILE
fi
else
echo "Source directory does not exist!" >> $LOG_FILE
fi
echo "------------------------------------" >> $LOG_FILE
cd "$BACKUP_DIR"
ls -1t | tail -n +11 | xargs -I {} rm -- {}
echo "Update from Developer A"
echo "Email notification feature added"
