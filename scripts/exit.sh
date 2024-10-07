#!/usr/bin/sh

choice=$(echo "Shutdown\nReboot\nSuspend" | /usr/local/bin/dmenu -i -p "Choose an action:")

case $choice in
    Shutdown) doas poweroff ;;
    Reboot) doas reboot ;;
    Suspend) doas zzz ;;
esac
