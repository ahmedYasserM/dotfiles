xsetroot -solid "#1D2327" &
sxhkd -c ~/.config/sxhkd/sxhkdrc &
[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
exec dwm
