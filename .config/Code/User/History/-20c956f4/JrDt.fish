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
abbr -a r 'sudo apt remove' ## remove
abbr -a q 'sudo apt search' ## query
abbr -a i 'sudo apt install' ## install
abbr -a s 'sudo apt update' ## sync
abbr -a u 'sync;sudo apt upgrade' ## update

# ls
alias cl 'command ls --color auto' ## pure ls
alias ls 'exa --icons'
abbr -a la 'ls -a'
abbr -a ll "ls -l"
abbr -a lla "ls -lah"

# shutdown and reboot
abbr -a sd 'sudo shutdown now' ## shutdown
abbr -a sr 'sudo reboot' ## reboot

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

alias c "tput -x clear"
alias manim "python -m manimlib --uhd -w -c black --video_dir ~/code/manim 	"
alias t "tldr"
alias pl "pdflatex"
alias ip "ip -c"
 


# vim
alias vim 'lvim'


# tmux
alias tl 'tmux ls'
alias tns 'tmux new-session -t'
alias ta 'tmux attach -t'
alias td 'tmux detach'


# youtube-dl
alias ydl 'youtube-dl'

# apt
alias r 'sudo apt remove' ## remove
alias q 'sudo apt search' ## query
alias i 'sudo apt install' ## install
alias s 'sudo apt update' ## sync
alias u 'sync;sudo apt upgrade' ## update

# ls
alias cl 'command ls --color auto' ## pure ls
alias ls 'exa --icons'
alias la 'ls -a'
alias ll "ls -l"
alias lla "ls -lah"

# shutdown and reboot
alias sd 'sudo shutdown now' ## shutdown
alias sr 'sudo reboot' ## reboot

# Exit
alias xx "exit"
 
# joshuto file manager
alias jo 'joshuto'

# tree symbols
alias tsym "echo ├ ─ │ └"

# bash
alias o "bash open ."

# rust and cargo
alias cr "cargo run"
alias cn "cargo new"


alias gcl 'gh repo clone'
alias gpu "git push"
alias gpl "git pull"
alias gf "git fetch"
alias gc "git commit"
alias gm "git merge"
alias ga "git add"

# cd
alias .. "z .."
alias ... "..;.."
alias .... "...;.."

alias rf "rm -rf"


alias grep "grep --color auto"
alias cat "bat"
alias c "clear -x"
alias ip "ip -c"
 





# ============================================================================= 
if status is-interactive
    # Commands to run in interactive sessions can go here
end
# =============================================================================
#
# Utility functions for zoxide.
#

# pwd based on the value of _ZO_RESOLVE_SYMLINKS.
function __zoxide_pwd
    builtin pwd -L
end

# A copy of fish's internal cd function. This makes it possible to use
# `alias cd=z` without causing an infinite loop.
if ! builtin functions --query __zoxide_cd_internal
    if builtin functions --query cd
        builtin functions --copy cd __zoxide_cd_internal
    else
        alias __zoxide_cd_internal='builtin cd'
    end
end

# cd + custom logic based on the value of _ZO_ECHO.
function __zoxide_cd
    __zoxide_cd_internal $argv
end

# =============================================================================
#
# Hook configuration for zoxide.
#

# Initialize hook to add new entries to the database.
function __zoxide_hook --on-variable PWD
    test -z "$fish_private_mode"
    and command zoxide add -- (__zoxide_pwd)
end

# =============================================================================
#
# When using zoxide with --no-cmd, alias these internal functions as desired.
#

if test -z $__zoxide_z_prefix
    set __zoxide_z_prefix 'z!'
end
set __zoxide_z_prefix_regex ^(string escape --style=regex $__zoxide_z_prefix)

# Jump to a directory using only keywords.
function __zoxide_z
    set -l argc (count $argv)
    if test $argc -eq 0
        __zoxide_cd $HOME
    else if test "$argv" = -
        __zoxide_cd -
    else if test $argc -eq 1 -a -d $argv[1]
        __zoxide_cd $argv[1]
    else if set -l result (string replace --regex $__zoxide_z_prefix_regex '' $argv[-1]); and test -n $result
        __zoxide_cd $result
    else
        set -l result (command zoxide query --exclude (__zoxide_pwd) -- $argv)
        and __zoxide_cd $result
    end
end

# Completions.
function __zoxide_z_complete
    set -l tokens (commandline --current-process --tokenize)
    set -l curr_tokens (commandline --cut-at-cursor --current-process --tokenize)

    if test (count $tokens) -le 2 -a (count $curr_tokens) -eq 1
        # If there are < 2 arguments, use `cd` completions.
        complete --do-complete "'' "(commandline --cut-at-cursor --current-token) | string match --regex '.*/$'
    else if test (count $tokens) -eq (count $curr_tokens); and ! string match --quiet --regex $__zoxide_z_prefix_regex. $tokens[-1]
        # If the last argument is empty and the one before doesn't start with
        # $__zoxide_z_prefix, use interactive selection.
        set -l query $tokens[2..-1]
        set -l result (zoxide query --exclude (__zoxide_pwd) --interactive -- $query)
        and echo $__zoxide_z_prefix$result
        commandline --function repaint
    end
end
complete --command __zoxide_z --no-files --arguments '(__zoxide_z_complete)'

# Jump to a directory using interactive search.
function __zoxide_zi
    set -l result (command zoxide query --interactive -- $argv)
    and __zoxide_cd $result
end

# =============================================================================
#
# Commands for zoxide. Disable these using --no-cmd.
#

abbr --erase z &>/dev/null
alias z=__zoxide_z

abbr --erase zi &>/dev/null
alias zi=__zoxide_zi

# =============================================================================
#
# To initialize zoxide, add this to your configuration (usually
# ~/.config/fish/config.fish):
#
#   zoxide init fish | source
