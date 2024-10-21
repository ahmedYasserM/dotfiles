# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# tmux
alias tns="tmux new-session -s"
alias ta="tmux attach-session -t"

# trash cli
alias rm="trash"

# git
alias gs="git status -s"

# neovide
alias nv="neovide --neovim-bin=(which lvim) . &disown" 

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
alias s='doas xbps-install -S'
alias i='s;doas xbps-install'
alias q='doas xbps-query -Rs'
alias u='s;doas xbps-install -u xbps; doas xbps-install -u'
alias r='doas xbps-remove -R'

# apt
# alias r="sudo apt remove"       ## remove
# alias q="apt search"       ## query
# alias i="sudo apt install"      ## install
# alias s="sudo apt update"       ## sync
# alias u="sync;sudo apt upgrade" ## update


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
function custom_prompt() {
  local cwd_color="%{$fg[cyan]%}"  # Color for the current directory
  local blue_color="%{$fg[blue]%}" # Color for the symbol
  local reset_color="%{$reset_color%}" # Reset the color

  # Get the current working directory
  local current_dir="${PWD}"

  # Check if the current directory is the home directory
  if [[ "$current_dir" == "$HOME" ]]; then
    echo -n "🏡"
  else
    echo -n "${blue_color}◎ ${cwd_color}$(basename "$current_dir")"
  fi

  # Add the rocket emoji and reset color
  echo -n " 🚀 ${reset_color}"
}

function update_prompt() {
  PROMPT="$(custom_prompt)"
}

PROMPT="$(custom_prompt)"
chpwd_functions+=(update_prompt)


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

# GO
export GOPATH=/home/ahmed/dev/go
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

# ============================================================================= Plugins ==============================================================================

