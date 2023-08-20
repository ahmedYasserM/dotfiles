#!/usr/bin/env bash

zsh_regex="zsh$"

if [[ $SHELL =~ $zsh_regex ]]; then
    echo "It looks like your shell '$SHELL' is Z-shell"
fi
