#!/usr/bin/env fish


set -gx PATH "/home/ahmed/downloads/apps/bin" "/home/ahmed/.nvm/versions/node/v21.2.0/bin" "/home/ahmed/dev/go/bin" "/bin" "/home/ahmed/.cargo/bin" "/home/ahmed/dev/scripts/" "/home/ahmed/.local/bin"  "/sbin" "/snap/bin" "/usr/bin"  "/usr/local/bin"  "/usr/local/go/bin" "/usr/local/sbin" "/usr/sbin" 

set -gx GOPATH "/home/ahmed/.go"

#export TERM=alacritty
set -gx HISTSIZE 10000
set -gx SAVEHIST 10000
set -gx EDITOR lvim
set -gx VISUAL lvim
set -g fish_greeting
set -gx GOPATH "/home/ahmed/dev/go"

# Manpages
set -x MANPAGER "nvim +Man!"

set -gx NNN_PLUG 'f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview;k:autojump'
