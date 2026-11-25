#!/usr/bin/env bash

echo "Backup destination: $HOME"

while true; do
  read -p "Enter backup source directory (or \"N\" to exit the script): " SRC_PATH

  # Safe exit (N) if the path is unknown
  if [[ "$SRC_PATH" == 'N' || "$SRC_PATH" == 'n' ]]; then
    echo "Exit"
    exit 0
  fi

  # If the path is incorrect, display an Error and ask again
  if [ ! -d "$SRC_PATH" ]; then
    echo "Error: Directory \"$SRC_PATH\" not found."
    continue
  fi

  TIME=$(date +"%Y-%m-%d_%H-%M")
  BASE=$(basename "$SRC_PATH")
  DEST_PATH="${HOME}/${BASE}_backup_${TIME}"

  cp -r "$SRC_PATH" "$DEST_PATH"
  echo "Backup created: $DEST_PATH"

  # New backup (Y) or exit (N)
  read -p "Would you like to create another copy? (Y - another copy, N - exit): " ANSWER
  if [[ "$ANSWER" == 'N' || "$ANSWER" == 'n' ]]; then
    echo "Exit"
    break
  fi
done