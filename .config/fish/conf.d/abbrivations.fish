#!/usr/bin/env fish

# tmux
abbr -a tl "tmux list-sessions"
abbr -a ta "tmux attach-session -t"
abbr -a tk "tmux kill-session -t"
abbr -a tn "tmux new-session -s"

# vim
abbr -a n "nvim"

# make
abbr -a ms "make -s"

# sxiv (image viewer)
abbr -a si "sxiv"

# watchexec
abbr -a we "watchexec"

# ls
abbr -a lab "exa -d --absolute"

# docker
abbr -a d "docker"

# virtualbox
abbr -a vb "VBoxManage"
abbr -a vs "VBoxManage startvm"

# mkdir
abbr -a md 'mkdir -p'

## google font installer
abbr -a gfid 'gfi download --dest ~/downloads/fonts'
abbr -a gfii 'gfi install'
abbr -a gfis 'gfi search'

# systemd
abbr -a sl "doas systemctl"

#xclip
abbr -a xl 'tee /dev/tty | xclip -selection c -r' # copy
abbr -a al 'xclip -selection c -o -r'  # paste

#wl-clipboard
#abbr -a xl 'tee /dev/tty | wl-copy -n'
#abbr -a al 'wl-paste'

# youtube-dl
abbr -a dl 'yt-dlp'


# apt
# abbr -a  r "doas nala remove"       ## remove
# abbr -a  q "nala search"       ## query
# abbr -a  i "doas nala install"      ## install
# abbr -a  s "doas nala update"       ## sync
# abbr -a  u "doas nala upgrade" ## update


# pacman
#abbr -a p "doas pacman"
#abbr -a i "doas pacman -S"
#abbr -a r "doas pacman -Rsn"
#abbr -a q "doas pacman -Ss"
#abbr -a s "doas pacman -Sy"
#abbr -a u "doas pacman -Syu"

# xbps
abbr -a i "doas xbps-install -S"
abbr -a r "doas xbps-remove -R "
abbr -a q "xbps-query -Rs"
abbr -a s "doas xbps-install -S"
abbr -a u "doas xbps-install -u xbps; doas xbps-install -Su"

# shutdown and reboot
abbr -a sd 'sudo shutdown now' ## shutdown
abbr -a sr 'sudo reboot'       ## reboot

# Exit
abbr -a xx "exit"


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
abbr -a gc 'git commit -m '
abbr -a gm "git merge"
abbr -a ga "git add"
abbr -a gs "git status -s"
abbr -a gl "git log --oneline"
abbr -a gk "git checkout"
abbr -a gb "git branch"


# git-graph
abbr -a g "git-graph"

# rust and cargo
abbr -a cr "cargo run"
abbr -a cn "cargo new"
