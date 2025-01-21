# go 
abbr -a cli "cobra-cli"

# watchexec
abbr -a we "watchexec -rc -q --"

# uv
abbr -a mg "uv run manage.py"
abbr -a ur "uv run"

# cargo
abbr -a ci "cargo --quiet"
abbr -a ch "cargo --quiet check"
abbr -a cb "cargo --quiet build"
abbr -a cr "cargo --quiet run"
abbr -a ct "cargo --quiet test"

# systemd
abbr -a sl "doas systemctl"

# python3
abbr -a p "ipython"

# docker
abbr -a d "docker"

# make
abbr -a ms "make -s"


# tmux
abbr -a tns "tmux new-session -s"
abbr -a ta "tmux attach-session -t"
abbr -a tk "tmux kill-session -t"
abbr -a tl "tmux list-sessions"
abbr -a tr "tmux rename-session"

# git
abbr -a gs "git status -s"
abbr -a ga "git add"
abbr -a gc "git commit -m"
abbr -a gp "git push"

# yazi
abbr -a zl "yazi"

# clear
abbr -a c "clear"

# pacman
abbr -a r "doas pacman -R" # remove
abbr -a q "pacman -Ss" # query
abbr -a i "doas pacman -S" # install
abbr -a s "doas pacman -Sy" # sync
abbr -a u "doas pacman -Syu" # update
