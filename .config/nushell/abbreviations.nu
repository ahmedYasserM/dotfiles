$env.config.abbreviations = {
# SSH
ssh: "env TERM=xterm-256color ssh"

# Go
cli: "cobra-cli"

# watchexec
we: "watchexec -rc -q --"

# uv
mg: "uv run manage.py"
ur: "uv run"

# cargo
ci: "cargo --quiet"
ch: "cargo --quiet check"
cb: "cargo --quiet build"
cr: "cargo --quiet run"
ct: "cargo --quiet test"

# systemd
sl: "doas systemctl"

# Python
p: "ipython"

# Docker
d: "docker"

# make
ms: "make -s"

# tmux
tns: "tmux new-session -s"
ta: "tmux attach-session -t"
tk: "tmux kill-session -t"
tl: "tmux list-sessions"
tr: "tmux rename-session"

# git
gs: "git status -s"
ga: "git add"
gc: "git commit -m"
gp: "git push"

# yazi
zl: "yazi"

# clear
c: "clear"

# pacman
r: "doas pacman -R"
q: "pacman -Ss"
i: "doas pacman -S"
s: "doas pacman -Sy"
u: "doas pacman -Syu"
}

