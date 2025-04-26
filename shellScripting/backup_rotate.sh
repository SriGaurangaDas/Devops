#!/bin/bash
set -euo pipefail

# Backup configuration
SOURCE_DIR="/root/Devops/shellScripting/mydata"
BACKUP_DIR="/root/Devops/shellScripting/backups"
MAX_BACKUPS=5

# Function to create backup
create_backup() {
    DATE=$(date +"%Y-%m-%d_%H-%M-%S")
    BACKUP_FILE="$BACKUP_DIR/backup_$DATE.zip"

    echo "Creating backup: $BACKUP_FILE"
    mkdir -p "$BACKUP_DIR"

    # Create a zip archive of the contents
    cd "$SOURCE_DIR"
    zip -r "$BACKUP_FILE" . 
}

# Function to rotate old backups
rotate_backups() {
    echo "Rotating backups, keeping latest $MAX_BACKUPS backups..."
    cd "$BACKUP_DIR"
    ls -1t | tail -n +$(($MAX_BACKUPS + 1)) | xargs -r rm --
}

# Main function to run everything
main() {
    create_backup
    rotate_backups
    echo "Backup and rotation complete!"
}

# Start the script
main

