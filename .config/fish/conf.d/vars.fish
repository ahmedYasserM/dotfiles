#!/usr/bin/env fish


#set TERM xterm-kitty  ## this fix the tmux colors
set -gx HISTSIZE 10000
set -gx SAVEHIST 10000
set -gx EDITOR nvim
set -gx VISUAL nvim
set -g fish_greeting
set -gx GOPATH "/home/ahmed/dev/go"
set -gx GH_BROWSER $BROWSER
set -gx XDG_PICTURES_DIR "/home/ahmed/pictures"
set -gx XDG_RUNTIME_DIR "/home/ahmed/.run"

# Manpages
set -x MANPAGER "nvim +Man!"

# PATH
fish_add_path /home/ahmed/.local/bin
fish_add_path /home/ahmed/.cargo/bin
fish_add_path /home/ahmed/dev/scripts
fish_add_path /home/ahmed/dev/go/bin
fish_add_path /usr/local/go/bin
fish_add_path /usr/local/sbin
fish_add_path /usr/local/bin
fish_add_path /usr/sbin
fish_add_path /usr/bin
fish_add_path /sbin
fish_add_path /bin
fish_add_path /snap/bin
fish_add_path /home/ahmed/.nix-profile/bin
