#!/usr/bin/env bash

dir1=$1
while inotifywait -qqre "attrib,modify,close_write,move,move_self,create,delete,delete_self" "$dir1"; do
    clear -x
    lsd --tree ${dir1}
done
