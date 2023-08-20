#!/usr/bin/env bash


echo "Common 10 Commands:"

tail -n 1000 ~/.cache/zsh/.histfile \
    | sort \
    | uniq -c \
    | sed -E 's/^ +//' \
    | sort -nr \
    | head -n 10



