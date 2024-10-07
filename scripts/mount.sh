#!/usr/bin/sh

uid=$(id -u)
gid=$(id -g)
guid=$(id -gn)

usbdevs=$(ls -l /sys/dev/block/ | awk -F"/" '($6~"usb" && $14~"sd") {print "/dev/"$14}')

if [ "$usbdevs" ]
then
    selected=$(
        lsblk -rno size,name,mountpoint $usbdevs | \
        awk '($1!="M" && $1!="K") {printf "%s %s %s\n", $2, $1, $3}' | \
        dmenu -l 5 -i -p "USB Drives: " | awk '{print $1}'
    )

    if grep -qs $selected /proc/mounts
    then
        sync
        doas umount /dev/$selected
        grep -qs /mnt/$selected /proc/mounts || doas rm -rf /mnt/$selected
    else
        [ ! -d /mnt/$selected ] && doas mkdir /mnt/$selected
        doas mount -o uid=$uid,gid=$gid /dev/$selected /mnt/$selected
    fi
else
    echo "No drives connected" | dmenu -i -p "USB Drives: "
    exit
fi

# I found this script on youtube.
