find ./ -maxdepth 1 -mindepth 1 -type d | xargs rm -fr
condor_status -const 'partitionableslot==True && regexp("^aci|m|g|frank|spald|wid", machine) == False' -af machine | xargs mkdir -p
cat job_header > submit_to_all.sub
condor_status -const 'partitionableslot==True && regexp("^aci|m|g|frank|spald|wid", machine) == False' -f 'requirements = True ) && (OpSysMajorVer == 6 || OpSysMajorVer == 7) && ( Machine == "%s" ) || ( False\n' machine -f 'initialdir = %s\nqueue\n\n' machine >> submit_to_all.sub
