#!/usr/bin/env bash

option=$1
sessionName=""

if [ $option -eq 1 ]; then
  sessionName="kitty"
else
  sessionName="term"
fi 

tmux ls 2>/dev/null | grep $sessionName

if [ $? -eq 0 ]; then
  tmux attach -t $sessionName 
else 
  tmux new-session -s $sessionName
  tmux attach -t $sessionName
fi
