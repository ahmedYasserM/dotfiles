#!/usr/bin/env bash



if mkdir ./backup 2>/dev/null
then
    echo "Successfully created the backup folder..."
else
    echo "Sorry, I can not create backup file here (:"
fi


# test command or evalute expression command