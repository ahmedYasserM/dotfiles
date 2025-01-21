#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @tokyo-night-tmux_theme)"
TRANSPARENT_THEME="$(tmux show-option -gv @tokyo-night-tmux_transparent)"

case $SELECTED_THEME in
"everforest-dark")
  declare -A THEME=(
    ["background"]="#1A2023"
    ["foreground"]="#D5C9AB"
    ["black"]="#2B3339"
    ["blue"]="#7FBBB3"
    ["cyan"]="#83C092"
    ["green"]="#A7C080"
    ["magenta"]="#D699B6"
    ["red"]="#E67E80"
    ["white"]="#D5C9AB"
    ["yellow"]="#DBBC7F"
    ["bblack"]="#3C474D"
    ["bblue"]="#7FBBB3"
    ["bcyan"]="#83C092"
    ["bgreen"]="#A7C080"
    ["bmagenta"]="#D699B6"
    ["bred"]="#E67E80"
    ["bwhite"]="#D5C9AB"
    ["byellow"]="#DBBC7F"
  )
  ;;
# Rose Pine Theme
"rose-pine")
  declare -A THEME=(
    ["background"]="#191724"
    ["foreground"]="#e0def4"
    ["black"]="#26233a"
    ["blue"]="#9ccfd8"
    ["cyan"]="#31748f"
    ["green"]="#6e6a86"
    ["magenta"]="#c4a7e7"
    ["red"]="#eb6f92"
    ["white"]="#e0def4"
    ["yellow"]="#f6c177"
    ["bblack"]="#2A2F41"
    ["bblue"]="#9ccfd8"
    ["bcyan"]="#31748f"
    ["bgreen"]="#6e6a86"
    ["bmagenta"]="#c4a7e7"
    ["bred"]="#eb6f92"
    ["bwhite"]="#555169"
    ["byellow"]="#f6c177"
    ["active_background"]="#31748f"
    ["active_border"]="#eb6f92"
    ["active_foreground"]="#e0def4"
    ["inactive_background"]="#2A2F41"
    ["inactive_border"]="#6e6a86"
    ["inactive_foreground"]="#6e6a86"
  )
  ;;

tokyo-night)
  # Tokyo Night
  declare -A THEME=(
    ["background"]="#0D0F18"
    ["foreground"]="#a9b1d6"
    ["black"]="#414868"
    ["blue"]="#7aa2f7"
    ["cyan"]="#7dcfff"
    ["green"]="#73daca"
    ["magenta"]="#bb9af7"
    ["red"]="#f7768e"
    ["white"]="#c0caf5"
    ["yellow"]="#e0af68"
    ["bblack"]="#2A2F41"
    ["bblue"]="#7aa2f7"
    ["bcyan"]="#7dcfff"
    ["bgreen"]="#41a6b5"
    ["bmagenta"]="#bb9af7"
    ["bred"]="#ff9e64"
    ["bwhite"]="#787c99"
    ["byellow"]="#e0af68"
  )
  ;;
esac

# Override background with "default" if transparent theme is enabled
if [ "${TRANSPARENT_THEME}" == 1 ]; then
  THEME["background"]="default"
fi

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"
