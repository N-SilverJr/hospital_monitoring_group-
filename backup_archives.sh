#!/usr/bin/env bash
archived_directory="archived_logs_group21"
host="cc91e1bce9ac.7b3ea1d9.alu-cod.online"
username="cc91e1bce9ac"

if [ ! -d "$archived_directory" ]; then
	mkdir "$archived_directory"
else
        echo "Directory already exist"
fi

for i in heart_rate_log.txt_*; do
	if [ ! -f "$i" ]; then
		echo "There is no file!"
	else	
		mv heart_rate_log.txt_* "$archived_directory"
	fi
done	
scp -r $archived_directory "$username@$host":/home/ 
echo "Backup was succesfull"
