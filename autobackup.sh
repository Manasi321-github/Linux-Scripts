#!/bin/bash

SOURCE_DIR="/home/users/data"
BACKUP_DIR="/home/users/backups"
TIMESTAMP="$(date +"%y-%m-%d_%H-%M-%S")"

BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
	echo "BACKUP successfully created: $BACKUP_FILE"
else
	echo "BACKUP failed"
fi
