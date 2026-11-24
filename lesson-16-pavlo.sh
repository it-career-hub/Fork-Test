#!/usr/bin/env bash
#
echo "Backup destination: $HOME"

while true; do
  read -p "Enter backup source directory: " SRC_PATH
  if [ ! -d "SRC_PATH" ]; then
    echo "Error: Directory \"SRC_PATH\" not found."
    continue
  fi

  $TIME = $(date +"%Y-%m-%d_%H-%M")
  $BASE = $(basename "$SOURCE_DIR")
  $DEST_PATH = "$HOME/$BASE_backup_$TIME"

  cp -r "$SRC_PATH" "$DEST_PATH"
  echo "Backup created: $DEST_PATH"

  read -p "Would you like to create another copy? (Y - another copy, N - exit): " ANSWER
  if [[ "$ANSWER" == 'Y' || "$ANSWER" == 'y' ]]; then
    echo "Exit"
    exit 1
done