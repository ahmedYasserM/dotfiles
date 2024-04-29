function fish_prompt
   if [ $PWD = "/home/ahmed" ] 
        echo ""
        echo "🏡 🚀 "

   else
        echo ""
        echo -n (set_color -o "#82AAFF")(basename $PWD) "🚀 "
   end
end
