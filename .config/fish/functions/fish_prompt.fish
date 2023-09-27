#function fish_prompt
#    if [ $PWD = "/home/ahmed" ] 
#	echo "🏡 🚀 "
#    else
#	echo -n (set_color -o "#A7C080")(basename $PWD) "🚀 "
#    end
#end


function fish_prompt
    echo -n (set_color -o "#7AA2F7") (set_color -o "#9D98F7") (basename $PWD) (set_color -o "#9ECE6A") " "
end
