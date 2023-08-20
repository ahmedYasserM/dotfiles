#!/usr/bin/env bash

total=1000
n=10


echo "Common 10 Commands:"

cat ~/.cache/zsh/.histfile \
    | sort \
    | uniq -c \
    | sed -E 's/^ +//' \
    | sort -nr \
    | head -n 10



