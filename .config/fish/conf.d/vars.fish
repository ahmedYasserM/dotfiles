#!/usr/bin/env fish

set -gx PATH "/home/ahmed/.local/bin" "/home/ahmed/.cargo/bin" "/usr/local/go/bin" "~/.go/bin"  $PATH
set -gx PATH "/home/ahmed/.nvm/versions/node/v20.5.1/bin" "/home/ahmed/dev/codeHub/scripts/" $PATH

set -gx GOPATH "/home/ahmed/.go"

export TERM=alacritty
set -gx HISTSIZE 10000
set -gx SAVEHIST 10000
set -gx EDITOR lvim
set -gx VISUAL lvim
set -g fish_greeting
