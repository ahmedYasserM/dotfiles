# ============================================================================= Zoxide Configs =======================================================================

# shellcheck shell=bash

# =============================================================================
#
# Utility functions for zoxide.
#

# pwd based on the value of _ZO_RESOLVE_SYMLINKS.
function __zoxide_pwd() {
    \builtin pwd -L
}

# cd + custom logic based on the value of _ZO_ECHO.
function __zoxide_cd() {
    # shellcheck disable=SC2164
    \builtin cd -- "$@"
}

# =============================================================================
#
# Hook configuration for zoxide.
#

# Hook to add new entries to the database.
function __zoxide_hook() {
    # shellcheck disable=SC2312
    \command zoxide add -- "$(__zoxide_pwd)"
}

# Initialize hook.
# shellcheck disable=SC2154
if [[ ${precmd_functions[(Ie)__zoxide_hook]:-} -eq 0 ]] && [[ ${chpwd_functions[(Ie)__zoxide_hook]:-} -eq 0 ]]; then
    chpwd_functions+=(__zoxide_hook)
fi

# =============================================================================
#
# When using zoxide with --no-cmd, alias these internal functions as desired.
#

# Jump to a directory using only keywords.
function __zoxide_z() {
    # shellcheck disable=SC2199
    if [[ "$#" -eq 0 ]]; then
        __zoxide_cd ~
    elif [[ "$#" -eq 1 ]] && { [[ -d "$1" ]] || [[ "$1" = '-' ]] || [[ "$1" =~ ^[-+][0-9]$ ]]; }; then
        __zoxide_cd "$1"
    elif [[ "$#" -eq 2 ]] && [[ "$1" = "--" ]]; then
        __zoxide_cd "$2"
    else
        \builtin local result
        # shellcheck disable=SC2312
        result="$(\command zoxide query --exclude "$(__zoxide_pwd)" -- "$@")" && __zoxide_cd "${result}"
    fi
}

# Jump to a directory using interactive search.
function __zoxide_zi() {
    \builtin local result
    result="$(\command zoxide query --interactive -- "$@")" && __zoxide_cd "${result}"
}

# =============================================================================
#
# Commands for zoxide. Disable these using --no-cmd.
#

function z() {
    __zoxide_z "$@"
}

function zi() {
    __zoxide_zi "$@"
}

# Completions.
if [[ -o zle ]]; then
    __zoxide_result=''

    function __zoxide_z_complete() {
        # Only show completions when the cursor is at the end of the line.
        # shellcheck disable=SC2154
        [[ "${#words[@]}" -eq "${CURRENT}" ]] || return 0

        if [[ "${#words[@]}" -eq 2 ]]; then
            # Show completions for local directories.
            _cd -/

        elif [[ "${words[-1]}" == '' ]]; then
            # Show completions for Space-Tab.
            # shellcheck disable=SC2086
            __zoxide_result="$(\command zoxide query --exclude "$(__zoxide_pwd || \builtin true)" --interactive -- ${words[2,-1]})" || __zoxide_result=''

            # Set a result to ensure completion doesn't re-run
            compadd -Q ""

            # Bind '\e[0n' to helper function.
            \builtin bindkey '\e[0n' '__zoxide_z_complete_helper'
            # Sends query device status code, which results in a '\e[0n' being sent to console input.
            \builtin printf '\e[5n'

            # Report that the completion was successful, so that we don't fall back
            # to another completion function.
            return 0
        fi
    }

    function __zoxide_z_complete_helper() {
        if [[ -n "${__zoxide_result}" ]]; then
            # shellcheck disable=SC2034,SC2296
            BUFFER="z ${(q-)__zoxide_result}"
            __zoxide_result=''
            \builtin zle reset-prompt
            \builtin zle accept-line
        else
            \builtin zle reset-prompt
        fi
    }
    \builtin zle -N __zoxide_z_complete_helper

    [[ "${+functions[compdef]}" -ne 0 ]] && \compdef __zoxide_z_complete z
fi

# =============================================================================
#
# To initialize zoxide, add this to your configuration (usually ~/.zshrc):
#
# eval "$(zoxide init zsh)"

# ============================================================================= Zoxide Configs =======================================================================

# ============================================================================= Aliases ==============================================================================

# cargo
alias ch="cargo --quiet check"
alias cb="cargo --quiet build"
alias cr="cargo --quiet run"
alias ct="cargo --quiet test"

# systemd
alias sd="doas systemctl"

# python3
alias p="ipython"

# ssh
alias ssh="TERM=xterm-256color ssh"

# Qemu
alias mq="make -f /home/ahmed/qemu/Makefile qemu"

# zoxide
alias cd="z"

# docker
alias d="docker"

# yt-dlp
alias dl="yt-dlp"

# skim
alias sk="sk --bind 'alt-j:down,alt-k:up'"

# make
alias ms="make -s"

# tealdeer
alias t="tealdeer"

#xclip
alias xl="tee /dev/tty | xclip -selection c -r" # copy
alias al="xclip -selection c -o -r"  # paste

# tmux
alias tns="tmux new-session -s"
alias ta="tmux attach-session -t"
alias tk="tmux kill-session -t"
alias tl="tmux list-sessions"
alias tr="tmux rename-session"

# trash cli
alias rm="trash"

# git 
alias gs="git status -s"

# vim
alias vim='nvim'

# neovide
alias nv="neovide . & disown &>/dev/null"

# yazi file manager 
alias zl="yazi" 

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

alias c="clear -x"

# git graph 
alias gg="git-graph --style round"

alias cat="bat -p"

alias ip="ip -c"

alias c="clear -x"

# cd
alias ..="z .."
alias ...="..;.."xterm-256color
alias ....="...;.."

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


# pacman
alias r="doas pacman -R"       ## remove
alias q="pacman -Ss"       ## query 
alias i="doas pacman -S"      ## install
alias s="doas pacman -Sy"       ## sync 
alias u="doas pacman -Syu" ## update 
# ============================================================================= Aliases ===============================================================================

# ============================================================================= Functions =============================================================================

#--------------------------------------------------- add to path function
add_to_path() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        export PATH="$1:$PATH"
    fi
}
#--------------------------------------------------- add to path function

#--------------------------------------------------- Change cursor shape based on vi mode
  # Remove mode switching delay.
  KEYTIMEOUT=5

  # Change cursor shape for different vi modes.
  function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] ||
       [[ $1 = 'block' ]]; then
      echo -ne '\e[1 q'

    elif [[ ${KEYMAP} == main ]] ||
         [[ ${KEYMAP} == viins ]] ||
         [[ ${KEYMAP} = '' ]] ||
         [[ $1 = 'beam' ]]; then
      echo -ne '\e[5 q'
    fi
  }
  zle -N zle-keymap-select

  # Use beam shape cursor on startup.
  echo -ne '\e[5 q'

  # Use beam shape cursor for each new prompt.
  preexec() {
     echo -ne '\e[5 q'
  }

_fix_cursor() {
 echo -ne '\e[5 q'
}
#--------------------------------------------------- Change cursor shape based on vi mode


# prompt

setopt PROMPT_SUBST        # enable command substitution in prompt
function dir_icon {
  if [[ "$PWD" == "$HOME" ]]; then
    echo "%B%F{cyan}%f%b"
  else
    echo "%B%F{cyan}%f%b"
  fi
}

#PS1='%B%F{blue}%f%b  %B%F{magenta}%n%f%b $(dir_icon)  %B%F{red}%~%f%b${vcs_info_msg_0_} %(?.%B%F{green}.%F{red})%f%b '

PS1='%B%F{blue}%f%b  $(dir_icon)  %B%F{magenta}$(basename `pwd`)%f%b${vcs_info_msg_0_} %(?.%B%F{green}.%F{red})%f%b '

#   function custom_prompt() {
#     local cwd_color="%F{#62B8AC}"     # Color for the current directory
#     local blue_color="%F{blue}"    # Color for the symbol
#     local red_color="%F{red}"       # Color for the symbol
#     local reset_color="%f"         # Reset the color

#     local current_dir="${PWD}"

#     if [[ "$current_dir" == "$HOME" ]]; then
#       echo -n "🏡"
#     else
#       # echo -n "${blue_color}◎ ${cwd_color}$(basename "$current_dir")"
#       echo -n "${cwd_color}$(basename "$current_dir")"
#     fi

#     echo -n " 🐧 ${reset_color}"
#     # echo -n " 🚀 ${reset_color}"

#   }

#   # Update prompt dynamically when directory changes
#   function update_prompt() {
#     PROMPT="$(custom_prompt)"  
#   }

#   PROMPT="$(custom_prompt)"

#   autoload -U add-zsh-hook
#   add-zsh-hook chpwd update_prompt

# Install Fonts (not my function)
function insfont ()
{
  if [[ -z $1 ]]; then
   echo provide path to zipped font file 
   return 1
  fi
  
  font_zip=$(realpath "$1")

  unzip "$font_zip" "*.ttf" "*.otf" -d ~/.local/share/fonts/
  fc-cache -vf
}

# ============================================================================= Functions =============================================================================

# ============================================================================= Variables =============================================================================

# browser
export BROWSER=/usr/local/bin/zen-browser

#EDITOR
export EDITOR=/bin/nvim

# PAGER
export MANPAGER="nvim +Man!"

# Terminal
export TERM=xterm-kitty
# export TERM=xterm-256color

# GO
export GOPATH=/home/ahmed/.go
export GOBIN=$GOPATH/bin

# XDG
export XDG_PICTURES_DIR="/home/ahmed/pictures"
export XDG_RUNTIME_DIR="/home/ahmed/.run"

# History
export HISTFILE="/home/ahmed/.cache/zsh/history"
export HISTSIZE=500000
export SAVEHIST=$HISTSIZE

# PATH
add_to_path "/home/ahmed/.local/bin"
add_to_path "/home/ahmed/.cargo/bin"
add_to_path "/home/ahmed/.nix-profile/bin"
add_to_path "/usr/local/go/bin"
add_to_path "/home/ahmed/dev/go/bin"
add_to_path "/home/ahmed/.platformio/penv/bin"



# ============================================================================= Variables ============================================================================

# ============================================================================= Options and bindings =================================================================

# enable vi mode
set -o vi

# map alt + ; to accept suggestion
bindkey '^[;' autosuggest-accept 

# HISTORY
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt APPEND_HISTORY            # Append history to the history file.

# Completion Styling
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'
# zstyle ':fzf-tab:complete:*' fzf-preview 'bat --color=always --style=header,grid --line-range :header -'
 
# fzf
eval "$(fzf --zsh)"
export FZF_DEFAULT_OPTS='--bind alt-j:down,alt-k:up'

# ============================================================================= Options and bindings =================================================================

# ============================================================================= Plugins ==============================================================================

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"


# plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light hlissner/zsh-autopair

# Load Completions
autoload -U compinit && compinit

# export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
# zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'


#  ┌─┐┬ ┬┌┬┐┌─┐  ┌─┐┌┬┐┌─┐┬─┐┌┬┐
#  ├─┤│ │ │ │ │  └─┐ │ ├─┤├┬┘ │
#  ┴ ┴└─┘ ┴ └─┘  └─┘ ┴ ┴ ┴┴└─ ┴
$HOME/.local/bin/colorscript -r
