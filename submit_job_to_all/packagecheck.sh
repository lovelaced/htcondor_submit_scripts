#!/bin/bash

# see if a certain package is installed
# will return 0 if true and 1 if false

PACKAGE="singularity"

echo -n "$hostname: "
yum list installed | grep -i $PACKAGE
echo $?
