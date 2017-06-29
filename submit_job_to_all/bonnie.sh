#!/bin/bash
export PATH=$(PATH):/usr/sbin
mem=$(free -m  | grep Mem | awk '{print $2}')
mem_mb=$(awk $mem/1024)
$(which bonnie++) -r $mem_mb -d . -q 
