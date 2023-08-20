#!/usr/bin/env bash

history_lines=2000 # total number of commands we used to filter.
command_count=10 # the most n common commands to show to the user.


echo "Common $n Commands:"

tail -n ${total} ~/.cache/zsh/.histfile \
    | sort \
    | uniq -c \
    | sed -E 's/^ +//' \
    | sort -nr \
    | head -n ${n}



