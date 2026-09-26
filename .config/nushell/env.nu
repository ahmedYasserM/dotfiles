# Disable the default greeting

# Nushell doesn't have a direct equivalent to fish_greeting.

# HISTORY

$env.HISTSIZE = 10000
$env.SAVEHIST = 10000

# Browser

$env.BROWSER = "/usr/local/bin/zen-browser"

# Editor

$env.EDITOR = "nvim"
$env.VISUAL = "nvim"

# Manpages

$env.MANPAGER = "nvim +Man!"

# Terminal

$env.TERM = "xterm-kitty"

# GO

$env.GOPATH = "/home/ahmed/.go"
$env.GOBIN = $"($env.GOPATH)/bin"

# XDG

$env.XDG_PICTURE_DIR = "/home/ahmed/pictures"

# fzf

$env.FZF_DEFAULT_OPTS = "--height 60% --layout=reverse --bind 'alt-k:up,alt-j:down'"

# PATH

$env.PATH = (
$env.PATH
| prepend [
"/home/ahmed/.local/bin"
"/home/ahmed/.cargo/bin"
"/home/ahmed/.local/share/bin"
$env.GOBIN
"/usr/local/sbin"
"/usr/local/bin"
"/usr/sbin"
"/usr/bin"
"/sbin"
"/bin"
"/snap/bin"
"/home/ahmed/.platformio/penv/bin"
"/home/ahmed/repos/scripts"
]
)
