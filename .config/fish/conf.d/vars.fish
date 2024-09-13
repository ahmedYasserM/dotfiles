#!/usr/bin/env fish


set -gx PATH "/home/ahmed/downloads/apps/bin" "/home/ahmed/.nvm/versions/node/v21.2.0/bin" "/home/ahmed/dev/go/bin" "/bin" "/home/ahmed/.cargo/bin" "/home/ahmed/dev/scripts/" "/home/ahmed/.local/bin"  "/sbin" "/snap/bin" "/usr/bin"  "/usr/local/bin"  "/usr/local/go/bin" "/usr/local/sbin" "/usr/sbin" 

set TERM xterm-kitty  ## this fix the tmux colors
set BROWSER brave
set -gx HISTSIZE 10000
set -gx SAVEHIST 10000
set -gx EDITOR nvim
set -gx VISUAL nvim
set -g fish_greeting
set -gx GOPATH "/home/ahmed/dev/go"
set -gx GH_BROWSER $BROWSER

# Manpages
set -x MANPAGER "nvim +Man!"

# nnn (I now use yazi)
# set -gx NNN_PLUG 'f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview;k:autojump' 

# tide
set --universal tide_left_prompt_items os pwd git newline character
set --universal tide_right_prompt_items status
set --universal tide_pwd_color_dirs FFFFFF
set --universal tide_pwd_color_anchors FFFFFF
set --universal git_icon ' '
set --universal _tide_pwd_len 1
set --universal fish_cursor_insert "line"
