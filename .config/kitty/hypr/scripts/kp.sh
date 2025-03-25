#!/usr/bin/env bash


# kp => kill process

ps aux | fzf | awk '{print $2}' | xargs kill -9
