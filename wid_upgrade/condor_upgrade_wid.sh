echo -n "Condor major version: "
read majorv
echo -n "Condor minor version: "
read minorv
find ./ -maxdepth 1 -mindepth 1 -type d | xargs rm -fr
cat upgrade_operations.sh | echo "$(sed "s/MAJOR_VERSION/$majorv/g")" | echo "$(sed "s/MINOR_VERSION/$minorv/g")" > wid_submit.sh
chmod +x wid_submit.sh
cat job_header > wid_submit.sub
./wid_submit.sh
condor_submit wid_submit.sub
