#!/usr/bin/env bash



if ! test -d ./backups
then
    mkdir ./backups
    echo "Successfully created the backup folder..."
fi


# test command or evalute expression command