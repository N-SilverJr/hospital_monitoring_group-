#!/usr/bin/env bash
# Variables
archived_directory="archived_logs_group21"
host="cc91e1bce9ac.7b3ea1d9.alu-cod.online"
username="cc91e1bce9ac"
# Create archived_directory if it doesn't exist
if [ ! -d "$archived_directory" ]; then
	mkdir "$archived_directory"
else
        # If archived_directory is present, then print this
	echo "Directory already exist"
fi
# Looping through archived files and moving them to the archives directory
for i in heart_rate_log.txt_*; do
	if [ ! -f "$i" ]; then
		echo "There is no file!"
	else	
		mv heart_rate_log.txt_* "$archived_directory"
	fi
done	
# Backup the archived files in the remote server
scp -r $archived_directory "$username@$host":/home/ 
echo "Backup was succesfull"
