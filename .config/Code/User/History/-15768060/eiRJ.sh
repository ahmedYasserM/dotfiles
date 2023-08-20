#!/usr/bin/env bash

read -p "Yes or No: " response

case $response in
[yY]*)
    echo "You have confirmed"
    ;;
[nN]*)
    echo "You have denied"
    ;;
*)
    echo "$response is not a valid response..."
    ;;
esac
