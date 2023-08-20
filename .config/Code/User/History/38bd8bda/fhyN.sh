# environment variables

set -gx "/home/ahmed/.local/bin" "/home/ahmed/.cargo/bin" $PATH
export PATH=/usr/local/go/bin:~/.go/bin:$PATH
export GOPATH=/home/ahmed/.go
export TERM=alacritty

set -gx HISTSIZE 10000
set -gx SAVEHIST 10000
set -gx EDITOR lvim
set -gx VISUAL lvim