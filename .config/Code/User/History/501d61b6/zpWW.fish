#!/user/bin/env fish


function fish_prompt
    if [$PWD -eq "/home/ahmed"] 
        echo "🏡 🚀 "
    else
        echo
    end
end

