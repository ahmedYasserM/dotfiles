function dir_icon
    # Get the basename of the current directory
    set -l dir_name (basename (pwd))
    # Return an icon based on the directory name
    switch $dir_name
        case "ahmed"
            echo ""
        case "documents"
            echo ""  # Icon for Documents
        case "downloads"
            echo ""  # Icon for Downloads
        case "pictures"
            echo ""  # Icon for Pictures
        case "music"
            echo ""  # Icon for Music
        case "videos"
            echo ""  # Icon for Videos
        case "*"
            echo ""  # Default icon for other directories
    end
end

function get_terminal_width
    tput cols
end

function fish_prompt
    # Save the status immediately
    set -l last_status $status
    
    # Colors
    set -l color_blue (set_color blue)
    set -l color_magenta (set_color magenta)
    set -l color_green (set_color green)
    set -l color_cyan (set_color cyan)
    set -l color_red (set_color red)
    set -l color_reset (set_color normal)
    
    # Icons
    set -l arch_icon ""
    set -l arrow ""
    set -l current_dir_icon (dir_icon)
    
    # Current directory name
    set -l current_dir (basename (pwd))
    if test (pwd) = $HOME
        set current_dir ""
    else
        set current_dir " $current_dir"
    end
    
    # Set arrow color based on last command status
    set -l arrow_color $color_green
    if test $last_status -ne 0
        set arrow_color $color_red
    end
    
    # Print the prompt
    echo -n $color_blue$arch_icon$color_reset
    echo -n "  "
    echo -n $color_cyan$current_dir_icon$color_reset
    echo -n " "
    echo -n $color_magenta$current_dir$color_reset
    echo -n " "
    echo -n $arrow_color$arrow$color_reset
    echo -n " "
end
