# ~/.config/nushell/aliases.nu


# ─────────────────────────────────────────────
# Go
# ─────────────────────────────────────────────

alias g = go run .
alias gov = go test -v | v

# ─────────────────────────────────────────────
# QEMU
# ─────────────────────────────────────────────

alias mq = make -f /home/ahmed/qemu/Makefile qemu



# ─────────────────────────────────────────────
# yt-dlp
# ─────────────────────────────────────────────

alias dl = yt-dlp


# ─────────────────────────────────────────────
# Skim
# ─────────────────────────────────────────────

alias sk = sk --bind 'alt-j:down,alt-k:up'


# ─────────────────────────────────────────────
# Tealdeer
# ─────────────────────────────────────────────

alias t = tldr


# ─────────────────────────────────────────────
# Xclip
# ─────────────────────────────────────────────

# alias xl = tee /dev/tty | xclip -selection c -r
# alias al = xclip -selection c -o -r

# ─────────────────────────────────────────────
# Wayland Clipboard (Hyprland)
# ─────────────────────────────────────────────

alias xl = wl-copy
alias al = wl-paste

# ─────────────────────────────────────────────
# Trash CLI
# ─────────────────────────────────────────────

alias rm = trash


# ─────────────────────────────────────────────
# Vim / Neovim
# ─────────────────────────────────────────────

alias vim = nvim


# ─────────────────────────────────────────────
# Neovide
# ─────────────────────────────────────────────

alias nv = neovide . & disown &>/dev/null


# ─────────────────────────────────────────────
# Exit
# ─────────────────────────────────────────────

alias xx = exit


# ─────────────────────────────────────────────
# VirtualBox
# ─────────────────────────────────────────────

alias vbox = vboxmanage


# ─────────────────────────────────────────────
# Eza
# ─────────────────────────────────────────────

alias cl = ls # core ls
alias ls = eza --icons=auto
alias ll = eza -lg --icons=auto
alias la = eza -a --icons=auto
alias lli = eza -li -g --icons
alias lla = eza -lhag --icons=auto --sort=name --group-directories-first
alias lt = eza --icons=auto --tree -L 1
alias le = eza --icons=auto --tree -L 1
alias li = ls -lgi


# ─────────────────────────────────────────────
# Open
# ─────────────────────────────────────────────

alias o = bash open .


# ─────────────────────────────────────────────
# Grep
# ─────────────────────────────────────────────

alias grep = grep --color=auto


# ─────────────────────────────────────────────
# Cat
# ─────────────────────────────────────────────

alias cat = bat -p


# ─────────────────────────────────────────────
# IP
# ─────────────────────────────────────────────

alias ip = ip -c


# ─────────────────────────────────────────────
# Git Graph
# ─────────────────────────────────────────────

alias gg = git-graph --style round


# ─────────────────────────────────────────────
# Clear
# ─────────────────────────────────────────────

alias c = clear


# ─────────────────────────────────────────────
# XBPS
# ─────────────────────────────────────────────

# alias i = doas xbps-install -S
# alias q = doas xbps-query -Rs
# alias u = doas xbps-install -Su xbps; doas xbps-install -u
# alias r = doas xbps-remove -R


# ─────────────────────────────────────────────
# APT
# ─────────────────────────────────────────────

# alias r = sudo apt remove
# alias q = apt search
# alias i = sudo apt install
# alias s = sudo apt update
# alias u = sync; sudo apt upgrade
