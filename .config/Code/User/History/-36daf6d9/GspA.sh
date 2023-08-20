#!/usr/bin/env bash

history_lines=2000 # total number of commands we used to filter.
command_count=10 # the most n common commands to show to the user.


echo "Common $command_count Commands:"

tail -n ${history_lines} ~/.cache/zsh/.histfile \
    | sort \
    | uniq -c \
    | sed -E 's/^ +//' \
    | sort -nr \
    | head -n ${command_count}



