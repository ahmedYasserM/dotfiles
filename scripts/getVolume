#!/usr/bin/env bash

# get the volume level
volumeLevel=$(amixer get Master | awk -F'[][]' 'END{ print $2 }')

# get mute status
isMuted=$(amixer get Master | grep -q off && echo "🔇")
 
if [ "$isMuted" ]; then
    echo "📢 ❌  "
else
    echo "📢 $volumeLevel"
fi
