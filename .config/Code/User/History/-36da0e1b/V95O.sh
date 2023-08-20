#!/usr/bin/env bash

echo "Welcome To our Commmon Commands Program..."

read -p "Please enter the number of history lines you want to search in: " history_lines

read -p "Please enter the number of most common commands you want to show: " command_count

read -p "Please enter the name of the shell you want to search about: " shell_name

shell_regex="([^/]+$)"

hist_path=""

if [[ $shell_name =~ $shell_regex ]]; then
    shell=${SHELL_REMATCH[1]}
    if [ "$shell" = "bash" ]; then
        hist_path="$(whcih bash)"
    elif [ "$shell" = "zsh" ]; then
        hist_path="$(which zsh)"
    elif [ "$shell" = "fish" ]; then
        hist_path="$(which fish)"
    fi
fi

echo "Common $command_count Commands:"

tail -n ${history_lines} ~/.cache/zsh/.histfile |
    sort |
    uniq -c |
    sed -E 's/^ +//' |
    sort -nr |
    head -n ${command_count}
