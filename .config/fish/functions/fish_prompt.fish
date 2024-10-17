function fish_prompt 

  set_color $fish_color_cwd
  if test (pwd) = "/home/ahmed"
    echo -n "🏡"
  else
    set_color blue
    echo -n "◎ "
    set_color $fish_color_cwd
    echo -n (basename (pwd))
  end

  echo -n " 🚀 "
end
