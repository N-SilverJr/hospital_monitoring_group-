#!/usr/bin/env bash
archived_directory="archived_logs_group21"
host="09ccfd4f93b5.51efc529.alu-cod.online"
username="09ccfd4f93b5"

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

if [ $? -eq 0]; then
	echo "The backup is successfull"
else
	echo "There are some errors, you might fix it quickly!"
fi	
