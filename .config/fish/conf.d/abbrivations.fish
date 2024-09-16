#!/usr/bin/env fish

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
abbr -a mkd 'mkdir -p'

## google font installer
abbr -a gfid 'gfi download --dest ~/downloads/fonts'
abbr -a gfii 'gfi install'
abbr -a gfis 'gfi search'


# systemd
abbr -a sl "doas systemctl"

# nnn
abbr -a  n 'nnn'

#xclip
# abbr -a xl 'tee /dev/tty | xclip -selection c -r' # copy
# abbr -a al 'xclip -selection c -o -r'  # paste

#wl-clipboard
abbr -a xl 'tee /dev/tty | wl-copy -n'
abbr -a al 'wl-paste'

# youtube-dl
abbr -a dl 'youtube-dl ""'


# apt
# abbr -a  r "doas nala remove"       ## remove
# abbr -a  q "nala search"       ## query
# abbr -a  i "doas nala install"      ## install
# abbr -a  s "doas nala update"       ## sync
# abbr -a  u "doas nala upgrade" ## update


# pacman
abbr -a p "doas pacman"
abbr -a i "doas pacman -S"
abbr -a r "doas pacman -Rsn"
abbr -a q "doas pacman -Ss"
abbr -a s "doas pacman -Sy"
abbr -a u "doas pacman -Syu"

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
abbr -a gc 'gitmoji commit'
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
