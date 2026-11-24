#!/bin/bash

while true; do
    read -p "Enter the path to the backup directory: " SOURCE_DIR

    if [ -d "$SOURCE_DIR" ]; then
        TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
        BACKUP_NAME="backup_$(basename "$SOURCE_DIR")_$TIMESTAMP"
        DEST_DIR="$HOME/$BACKUP_NAME"

        cp -r "$SOURCE_DIR" "$DEST_DIR"
        echo "The directory has been successfully copied to: $DEST_DIR"
    else
        echo "Error: directory '$SOURCE_DIR' does not exist."
    fi

    read -p "Would you like to make another copy? (y/n): " ANSWER
    if [[ "$ANSWER" != "y" && "$ANSWER" != "Y" ]]; then
        echo "Shutting down."
        break
    fi
done