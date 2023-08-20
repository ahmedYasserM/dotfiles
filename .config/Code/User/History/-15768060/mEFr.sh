#!/usr/bin/env bash

# n1=5
# n2=8

if [ ./info.sh -ef ./info.sh ]; then
    echo "Same Files..."
else
    echo "Different Files..."
fi


# if [ $n1 -lt $n2 ]; then
#     echo "$n1 is less than $n2"
# else
#     echo "$n1 is greater than $n2"
# fi


# if [ $n1 -eq $n2 ]; then
#     echo "$n1 is equal to $n2"
# else
#     echo "$n1 is NOT equal to $n2"
# fi

# if [ -n "" ]; then
#     echo "length is NonZero..."
# else
#     echo "length is Zero..."
# fi

# if [ -z " " ]; then
#     echo "Length is Zero..."
# else
#     echo "Length is NonZero..."
# fi
