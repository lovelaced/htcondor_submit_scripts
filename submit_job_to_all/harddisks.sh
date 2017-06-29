#!/bin/bash

# this script outputs the sizes of each disk in a node
# you can pipe the output to wc -l to find out how many disks are in a machine

for disk in {a..l}; do
  lsblk -b --output SIZE -n -d "/dev/sd$disk" 2>/dev/null
done
