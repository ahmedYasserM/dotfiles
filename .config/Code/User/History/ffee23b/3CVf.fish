# vim
abbr -a vim 'lvim'

# tmux
abbr -a tl 'tmux ls'
abbr -a tns 'tmux new-session -t'
abbr -a ta 'tmux attach -t'
abbr -a td 'tmux detach'

# youtube-dl
abbr -a ydl 'youtube-dl'

# apt
abbr -a r 'sudo apt remove'       ## remove
abbr -a q 'sudo apt search'       ## query
abbr -a i 'sudo apt install'      ## install
abbr -a s 'sudo apt update'       ## sync
abbr -a u 'sync;sudo apt upgrade' ## update

# ls
alias cl 'command ls --color auto' ## pure ls
alias ls 'exa --icons'
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

abbr -a gcl 'gh repo clone'
abbr -a gpu "git push"
abbr -a gpl "git pull"
abbr -a gf "git fetch"
abbr -a gc "git commit"
abbr -a gm "git merge"
abbr -a ga "git add"

# cd
alias .. "z .."
alias ... "..;.."
alias .... "...;.."

abbr -a rf "rm -rf"

alias grep "grep --color auto"

abbr -a cat "bat"

alias ip "ip -c"

alias c "clear -x"
