#!/usr/bin/env fish


set -gx PATH "/home/ahmed/.go/bin" "/bin" "/home/ahmed/.cargo/bin" "/home/ahmed/dev/codeHub/scripts/" "/home/ahmed/.local/bin" "/home/ahmed/.nvm/versions/node/v20.5.1/bin" "/sbin" "/snap/bin" "/usr/bin"  "/usr/local/bin"  "/usr/local/go/bin" "/usr/local/sbin" "/usr/sbin"

set -gx GOPATH "/home/ahmed/.go"

#export TERM=alacritty
set -gx HISTSIZE 10000
set -gx SAVEHIST 10000
set -gx EDITOR lvim
set -gx VISUAL lvim
set -g fish_greeting

# Manpages
set -x MANPAGER "lvim +Man!"
