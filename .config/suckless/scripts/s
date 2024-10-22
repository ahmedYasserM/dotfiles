#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
  selected=$1
else

  tmux_sessions=$(tmux list-sessions -F "#{session_name}")

  selected=$({
    find ~/dev -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
      last_dir_name=$(basename "$dir")

      if ! echo "$tmux_sessions" | grep -q -w "$last_dir_name"; then
        echo "$dir"
      fi
    done
    while read -r session; do
      echo -e "\033[1;34m$session\033[0m"
    done <<<"$tmux_sessions"
  } | sk --print-query --ansi)

  skimatatus=$?
fi

if [[ -z $selected ]]; then
  exit 0
fi

if [[ $skimStatus -eq 1 ]]; then
  selected_name=$selected
  selected=$HOME
else
  selected=$(tail -n 1 <<<$selected)
  selected_name=$(basename "$selected" | tr . _)
fi
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
  tmux new-session -s $selected_name -c $selected
  exit 0
fi

if ! tmux has-session -t=$selected_name 2>/dev/null; then
  tmux new-session -ds $selected_name -c $selected
fi

if [[ -z $TMUX ]]; then
  tmux attach -t $selected_name
else
  tmux switch-client -t $selected_name
fi
