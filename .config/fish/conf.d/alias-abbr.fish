#!/usr/bin/env fish

# vim
# alias vim "lvim"

#docker
abbr -a d 'sudo docker'

#sc-im
alias scim="sc-im"

alias tree="exa --tree"

# tmux
alias  tl 'tmux ls'
alias  tns 'tmux new-session -t'
alias  ta 'tmux attach -t'
alias  td 'tmux detach'

# youtube-dl
abbr -a ydl 'youtube-dl'

# apt
alias r="sudo apt remove"       ## remove
alias q="apt search"       ## query
alias i="sudo apt install"      ## install
alias s="sudo apt update"       ## sync
alias u="sync;sudo apt upgrade" ## update

# ls
alias cl 'command ls --color auto' ## pure ls
alias ls 'lsd'
abbr -a l 'ls'
abbr -a la 'ls -a'
abbr -a ll "ls -l"
abbr -a lla "ls -lah"

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

alias cat "bat"

alias ip "ip -c"

alias c "clear -x"