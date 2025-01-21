#!/usr/bin/env fish

# Disable the default greeting
set -g fish_greeting

# HISTORY
set -gx HISTSIZE 10000
set -gx SAVEHIST 10000

# browser
set -gx BROWSER "/usr/local/bin/zen-browser"

# Editor
set -gx EDITOR nvim
set -gx VISUAL nvim

# Manpages
set -x MANPAGER "nvim +Man!"

# Terminal
set -gx TERM xterm-kitty

# GO
set -gx GOPATH "/home/ahmed/.go"
set -gx GOBIN $GOPATH/bin

# XDG
set -gx XDG_PICTURE_DIR "/home/ahmed/pictures"

# fzf plugin
set -gx FZF_DEFAULT_OPTS "--height 60% --layout=reverse --bind 'alt-k:up,alt-j:down'"

# PATH
fish_add_path /home/ahmed/.local/bin
fish_add_path /home/ahmed/.cargo/bin
fish_add_path $GOBIN
fish_add_path /usr/local/sbin
fish_add_path /usr/local/bin
fish_add_path /usr/sbin
fish_add_path /usr/bin
fish_add_path /sbin
fish_add_path /bin
fish_add_path /snap/bin
fish_add_path /home/ahmed/.platformio/penv/bin
