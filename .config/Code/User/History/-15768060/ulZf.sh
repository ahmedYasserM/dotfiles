#!/usr/bin/env bash

read -p "Yes or No: " response

case $response in
[yY]*)
    echo "You have confirmed"
    ;;
n | N | no | No)
    echo "You have denied"
    ;;
*)
    ecoh "$response is not a valid response..."
    ;;
esac