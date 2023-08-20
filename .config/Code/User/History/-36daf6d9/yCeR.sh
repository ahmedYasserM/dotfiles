#!/usr/bin/env bash




echo "Common 10 Commands:"

cat ~/.cache/zsh/.histfile \
    | sort \
    | uniq -c \
    | sed -E 's/^ +//' \
    | sort -nr \
    | head -n 10



