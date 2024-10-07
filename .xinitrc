xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xsetroot -solid "#1D2327" &
sxhkd -c ~/.config/sxhkd/sxhkdrc &
setxkbmap -layout us,ara -option grp:win_space_toggle
[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
slstatus &
exec dwm
