function fish_prompt
   if [ $PWD = "/home/ahmed" ] 
        echo ""
        echo "🏡 🚀 "

   else
        echo ""
        echo -n (set_color -o "#A7C080")(basename $PWD) "🚀 "
   end
end
