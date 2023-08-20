#!/usr/bin/env bash

if [ -x /usr/local/bin/common ]; then
    echo "The 'common' command has been installed in the local bin folder, and it is 'executable'."
elif [ -e /usr/local/bin/common ]; then
    echo "The 'common' command has been installed in the local bin folder."
else
    echo "The 'common' command has not been installed in the local bin folder. "
fi

# test command or evalute expression command
