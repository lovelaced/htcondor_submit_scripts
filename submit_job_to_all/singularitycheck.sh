#!/bin/bash

# Attempt at running a Hello World in singularity

mkdir -p /var/lib/condor/singularity_test
chown $OSG_USER: /var/lib/condor/singularity_test
su - $OSG_USER
cd /var/lib/condor/singularity_test
/usr/bin/singularity exec --bind /cvmfs --bind $pwd:/srv --pwd /srv --scratch /var/tmp --scratch /tmp --containall /cvmfs/singularity.opensciencegrid.org/rynge/osgvo:el6 echo Hello World | grep Hello World
