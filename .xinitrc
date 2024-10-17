xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xsetroot -solid "#141B1E" &
sxhkd -c ~/.config/sxhkd/sxhkdrc &
setxkbmap -layout us,ara -option grp:win_space_toggle
[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
slstatus &
exec dwm
