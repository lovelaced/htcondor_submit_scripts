#!/bin/bash
for disk in {a..l}; do
  lsblk -b --output SIZE -n -d "/dev/sd$disk" 2>/dev/null
done
