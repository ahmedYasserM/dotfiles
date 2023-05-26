#______________________________________________________#

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/.histfile
EDITOR=lvim
VISUAL=lvim

#______________________________________________________

# environment variables 


export PATH=/home/ahmed/.local/bin:/home/ahmed/.cargo/bin:$PATH

#______________________________________________________



# docker
alias docker='sudo docker'
# make
alias m='make -s'

# nodejs
alias n='node .'

# python
alias rp='python3 main.py'

alias tok='cat ~/data/token'

# git
alias gpu='git push'
alias gpl='git pull'
alias gf='git fetch'
alias gc='git commit'
alias gm='git merge'
alias ga='git add'

alias ..='z ..'

alias rf='rm -rf'

alias dr='dotnet run'
alias dn='dotnet new'

alias vim='lvim'

alias ctp='cp /home/ahmed/Templates/c-temp'
alias cptp='cp /home/ahmed/Templates/cpp-temp'

alias ll='exa --icons -la'
alias ls='exa --icons'
alias l='exa --icons'
alias grep='grep --color=auto'
alias cat='bat'
alias c='clear'
alias manim='python -m manimlib --uhd -w -c black --video_dir ~/code/manim'	
alias t='tldr'
alias pl='pdflatex'
alias ip='ip -c'
 
#______________________________________________________


bindkey -v

#______________________________________________________


PROMPT='%F{blue}%1/%F{green}  '
#❯
#______________________________________________________

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

#______________________________________________________


function ranger-cd {
    local IFS=$'\t\n'
    local tempfile="$(mktemp -t tmp.XXXXXX)"
    local ranger_cmd=(
        command
        ranger
        --cmd="map q chain shell echo %d > "$tempfile"; quitall"
    )
    
    ${ranger_cmd[@]} "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
        cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}


 bindkey -s '^o' 'ranger-cd\n'
#______________________________________________________



# plugins
source ~/src/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


source ~/src/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#______________________________________________________




_z_cd() {
    cd "$@" || return "$?"

    if [ "$_ZO_ECHO" = "1" ]; then
        echo "$PWD"
    fi
}

z() {
    if [ "$#" -eq 0 ]; then
        _z_cd ~
    elif [ "$#" -eq 1 ] && [ "$1" = '-' ]; then
        if [ -n "$OLDPWD" ]; then
            _z_cd "$OLDPWD"
        else
            echo 'zoxide: $OLDPWD is not set'
            return 1
        fi
    else
        _zoxide_result="$(zoxide query -- "$@")" && _z_cd "$_zoxide_result"
    fi
}

zi() {
    _zoxide_result="$(zoxide query -i -- "$@")" && _z_cd "$_zoxide_result"
}


alias za='zoxide add'

alias zq='zoxide query'
alias zqi='zoxide query -i'

alias zr='zoxide remove'
zri() {
    _zoxide_result="$(zoxide query -i -- "$@")" && zoxide remove "$_zoxide_result"
}


_zoxide_hook() {
    zoxide add "$(pwd -L)"
}

chpwd_functions=(${chpwd_functions[@]} "_zoxide_hook")




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#

conda config --set auto_activate_base false

__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup


# <<< conda initialize <<<

