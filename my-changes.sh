#!/bin/bash

echo "📅 Сегодня: $(date '+%A, %d %B %Y %H:%M')"
echo ""
echo "🌦 Погода:"
curl -s wttr.in/Kassel?format=3
