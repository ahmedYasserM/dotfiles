#!/usr/bin/env bash

echo "Welcome To our Commmon Commands Program..."

read -p "Please enter the number of history lines you want to search in: " history_lines

read -p "Please enter the number of most common commands you want to show: " command_count

read -p "Please enter the name of the shell you want to search about: " shell_name

shell_regex="([^/]+$)"

hist_path=""
shell=""
if [[ $shell_name =~ $shell_regex ]]; then
    shell=${BASH_REMATCH[1]}
    if [ "$shell" = "bash" ]; then
        hist_path="~/.bash_history"
    elif [ "$shell" = "zsh" ]; then
        hist_path="~/.zsh_history"
    elif [ "$shell" = "nu" ]; then
        hist_path="/home/ahmed/.config/nushell/history.txt"
    fi
fi

echo "Common $command_count Commands:"
tail -n ${history_lines} $hist_path |
    sort |
    uniq -c |
    sed -E 's/^ +//' |
    sort -nr |
    head -n ${command_count}
