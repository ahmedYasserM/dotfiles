#function fish_prompt
#    if [ $PWD = "/home/ahmed" ] 
#	echo "🏡 🚀 "
#    else
#	echo -n (set_color -o "#A7C080")(basename $PWD) "🚀 "
#    end
#end


function fish_prompt
	echo -n (set_color -o "#A7C080")(basename $PWD) "❯ "
end
