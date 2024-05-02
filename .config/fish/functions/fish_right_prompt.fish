function fish_right_prompt
  echo -n (set_color "#A7C080") (command git symbolic-ref --short HEAD 2>/dev/null)
end
