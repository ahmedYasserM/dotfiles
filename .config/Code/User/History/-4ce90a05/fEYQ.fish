#!/usr/bin/env fish

bind -M default a\; accept-autosuggestion
bind -M insert a\; accept-autosuggestion

bind --mode insert --sets-mode default jk repaint
