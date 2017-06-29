#!/bin/bash
yum list installed | grep -i singularity
echo -n "$hostname: "
echo $?
