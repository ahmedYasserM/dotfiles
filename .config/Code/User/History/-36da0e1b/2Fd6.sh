#!/usr/bin/env bash

echo "Welcome To our Commmon Commands Program..."

read -p "Please enter the number of history lines you want to search in: " history_lines

read -p "Please enter the number of most common commands you want to show: " command_count

read -p "Please enter the name of the shell you want to search about: " shell-name

shell_regex="([^/]+$)"


if [ "${shell-name}" = "bash" ]

echo "Common $command_count Commands:"

tail -n ${history_lines} ~/.cache/zsh/.histfile \
    | sort \
    | uniq -c \
    | sed -E 's/^ +//' \
    | sort -nr \
    | head -n ${command_count}




