#!/usr/bin/env fish

# go
alias  g="go run ."
alias gov="go test -v | v"

# a alias
alias a="./a"

# reload zsh config
alias szh="source ~/.zshrc"

# ssh
alias ssh="TERM=xterm-256color ssh"

# Qemu
alias mq="make -f /home/ahmed/qemu/Makefile qemu"

# zoxide
alias cd="z"

# yt-dlp
alias dl="yt-dlp"

# skim
alias sk="sk --bind 'alt-j:down,alt-k:up'"

# tealdeer
alias t="tldr"

#xclip
alias xl="tee /dev/tty | xclip -selection c -r" # copy
alias al="xclip -selection c -o -r"  # paste

# trash cli
alias rm="trash"

# vim
alias vim='nvim'

# neovide
alias nv="neovide . & disown &>/dev/null"

# exit 
alias xx="exit"

# virtualbox
alias vbox='vboxmanage'

alias ls='eza --icons=auto' # short list
alias  ll='eza -lg --icons=auto' # long list
alias la='eza -a --icons=auto' # list all
alias  lli='eza -li -g --icons'
alias lla='eza -lhag --icons=auto --sort=name --group-directories-first' # long list all
alias lt="eza --icons=auto --tree -L 1"
alias le="eza --icons=auto --tree -L 1"
alias li='ls -lgi'

alias o="bash open ."

alias grep="grep --color=auto"

alias cat="bat -p"

alias ip="ip -c"

# git graph 
alias gg="git-graph --style round"

alias cat="bat -p"

alias ip="ip -c"

alias c="clear -x"

alias grep="grep --color=auto"

#xbps 
# alias i='doas xbps-install -S'
# alias q='doas xbps-query -Rs'
# alias u='doas xbps-install -Su xbps; doas xbps-install -u'
# alias r='doas xbps-remove -R'

# apt
# alias r="sudo apt remove"       ## remove
# alias q="apt search"       ## query
# alias i="sudo apt install"      ## install
# alias s="sudo apt update"       ## sync
# alias u="sync;sudo apt upgrade" ## update
