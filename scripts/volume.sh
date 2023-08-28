#!/usr/bin/env bash

choice=$1

if [ "$choice" = "up" ]; then
	amixer set Master 10dB+
elif [ "$choice" = "down" ]; then
	amixer set Master 10dB-
else
	amixer set Master toggle
fi
	
