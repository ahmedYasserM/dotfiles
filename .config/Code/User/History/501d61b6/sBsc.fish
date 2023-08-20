#!/user/bin/env fish

function fish_prompt
    if [$PWD -eq "/home/ahmed"] 
        echo "🏡 🚀 "
    else
        echo -n (basename $PWD) " 🚀 "
    end
end
funcsave fish_prompt > /dev/null

