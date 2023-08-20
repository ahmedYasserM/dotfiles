#!/usr/bin/env bash



if ! test -d ./backups
then
    mkdir ./backups
    echo "Successfully created the backup folder..."
else
    echo "Sorry, I can not create backup file here (:"
fi


# test command or evalute expression command