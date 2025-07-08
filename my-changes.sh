#!/bin/bash

echo "Today: $(date '+%A, %d %B %Y %H:%M')"
echo "The Weather is:"
curl -s wttr.in/Kassel?format=3
