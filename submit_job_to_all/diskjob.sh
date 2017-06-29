#!/bin/sh

# yet another disk size script

for disk in "sd"{a..z}; do
    if [ -d /sys/class/block/$disk ]; then
       read size < /sys/class/block/$disk/size
       echo "$disk: $((size>>11)) MiB, $((size>>21)) GiB, $((size>>31)) TiB"
    fi
done 
