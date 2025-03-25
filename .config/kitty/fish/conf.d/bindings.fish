#!/usr/bin/env fish

bind -M default \e\; accept-autosuggestion
bind -M insert \e\; accept-autosuggestion
bind -M insert \eb 'commandline -i "^\\\\\$"; commandline -C (math (commandline -C) - 2)'
