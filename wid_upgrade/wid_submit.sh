condor_status -const 'partitionableslot==True && facility == "WID" && regexp("^aci", machine) == False' -af machine | xargs mkdir -p

condor_status -const 'partitionableslot==True && facility == "WID" && regexp("^aci", machine) == False' -f 'requirements = True ) && ( Machine == "%s" && split(Target.CondorVersion)[1] == "8.7.2" && split(Target.CondorVersion)[6] == "407060" ) || ( False\n' machine -f 'initialdir = %s\nqueue\n\n' machine >> wid_submit.sub
