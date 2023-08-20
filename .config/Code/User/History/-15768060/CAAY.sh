#!/usr/bin/env bash

# s="hello, world"
s=""

# if [ -n "" ]; then
#     echo "length is NonZero..."
# else
#     echo "length is Zero..."
# fi

if [ -z " " ]; then
    echo "Length is Zero..."
else
    echo "Length is NonZero..."
fi
