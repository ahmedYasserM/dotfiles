#!/usr/bin/env fish

bind -M default \e\; accept-autosuggestion
bind -M insert \e\; accept-autosuggestion

bind --mode insert --sets-mode default jk repaint
