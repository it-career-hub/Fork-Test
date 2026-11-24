#!/usr/bin/env bash

while true
do
    read -p "Path to catalog: " cat_path

    if [ ! -d "$cat_path" ]
    then
        echo "Error: directory not found"
    else
        backup_name="backup_$(date '+%Y-%m-%d_%H-%M-%S')"
        cp -r "$cat_path" "$HOME/$backup_name"
        echo "Backup created: $HOME/$backup_name"
    fi

    read -p "Copy another catalog? (y/n): " answer

    if [ "$answer" = "n" ]
    then
        break
    fi
done

echo "Script completed"
