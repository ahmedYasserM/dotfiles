#!/usr/bin/env fish

while true 
code (find ~/dev -type d  | fzf)
end
