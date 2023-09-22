#!/usr/bin/env fish


# obsidian
alias to 'cp -r ~/repos/personal/dotfiles/templates/obsidian-template/{.obsidian,.obsidian.vimrc} .'

# history
alias history 'history'
# alias history 'history | nl'

# vscode
alias code "code $1 & disown"

# nnn
abbr -a  n 'nnn'

# lvim
alias vim 'lvim'


# current time
alias ctime 'date +%T'

#xclip
abbr -a xl 'xclip -selection c' # copy
abbr -a al 'xclip -selection c -o | tr "\n" " "'  # paste

#docker
abbr --erase a
abbr -a d 'doas docker'
#sc-im
alias scim="sc-im"


# tmux
alias  tl 'tmux ls'
alias  tns 'tmux new-session -t'
alias  ta 'tmux attach -t'
alias  td 'tmux detach'

# youtube-dl
abbr -a ydl 'youtube-dl'

# xbps
alias s 'doas xbps-install -S'
alias i 's;doas xbps-install'
alias q 'doas xbps-query -Rs'
alias u 's;doas xbps-install -u xbps; doas xbps-install -u'
alias r 'doas xbps-remove -R'

abbr --erase q
# apt
# alias  r="sudo apt remove"       ## remove
# alias  q="apt search"       ## query
# alias  i="sudo apt install"      ## install
# alias  s="sudo apt update"       ## sync
# alias  u="sync;sudo apt upgrade" ## update

# ls
alias cl 'command ls --color auto' ## pure ls
alias ls 'lsd'
abbr -a l 'ls'
abbr -a la 'ls -a'
abbr -a ll "ls -lh"
abbr -a lla "ls -lah"

alias tree="ls --tree"
abbr -a re 'tree'

# shutdown and reboot
abbr -a sd 'sudo shutdown now' ## shutdown
abbr -a sr 'sudo reboot'       ## reboot

# Exit
abbr -a xx "exit"

# tree symbols
alias tsym "echo ├ ─ │ └"

# bash
alias o "bash open ."

# rust and cargo
abbr -a cr "cargo run"
abbr -a cn "cargo new"

abbr -a rm "trash"
abbr -a rmr "trash-restore"
abbr -a rml "trash-list"

# git

abbr -a gcl 'gh repo clone'
abbr -a gpu "git push"
abbr -a gpl "git pull"
abbr -a gf "git fetch"
abbr -a gc "git commit"
abbr -a gm "git merge"
abbr -a ga "git add"
abbr -a gs "git status"

# cd
alias .. "z .."
alias ... "..;.."
alias .... "...;.."

alias rf "rm -rf"

alias grep "grep --color=auto"

abbr --erase cat
alias cat "bat -p"

alias ip "ip -c"

alias c "clear -x"
