#!/usr/bin/env fish

# vim
# alias vim "lvim"

# neovide
alias vid "neovide & disown"

# dolphin
alias do='setsid dolphin $1 &> /dev/null'

# virtualbox
alias vbox='vboxmanage'

# ls
alias  l='eza -lh  --icons=auto' # long list
alias ls='eza   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs


# tree symbols
alias tsym "echo ├ ─ │ └"

# bash
alias o "bash open ."


alias grep "grep --color=auto"

alias cat "bat"

alias ip "ip -c"

alias c "clear -x"


# matlab
# alias matlab="matlab & disown"

alias git-graph "git-graph --style round"

alias cat "bat -p"

alias ip "ip -c"

alias c "clear -x"

# cd
alias .. "z .."
alias ... "..;.."
alias .... "...;.."


alias grep "grep --color=auto"


# obsidian
alias to 'cp -r ~/repos/personal/dotfiles/templates/obsidian-template/{.obsidian,.obsidian.vimrc} .'

# tree symbols
alias tsym "echo ├ ─ │ └"

# bash
alias o "bash open ."

# history
alias history 'history'
# alias history 'history | nl'


# lvim
alias vim 'nvim'


# current time
alias ctime 'date +%T'


#sc-im
alias scim="sc-im"


# xbps
# alias s 'doas xbps-install -S'
# alias i 's;doas xbps-install'
# alias q 'doas xbps-query -Rs'
# alias u 's;doas xbps-install -u xbps; doas xbps-install -u'
# alias r 'doas xbps-remove -R'

# apt
# alias r="sudo apt remove"       ## remove
# alias q="apt search"       ## query
# alias i="sudo apt install"      ## install
# alias s="sudo apt update"       ## sync
# alias u="sync;sudo apt upgrade" ## update
