#!/usr/bin/env bash
archived_directory="archived_logs_group21"
host="09ccfd4f93b5.51efc529.alu-cod.online"
username="09ccfd4f93b5"
directory="/home/"
if [ ! -d "$archived_directory" ]; then
	mkdir "$archived_directory"
else
        echo "Directory already exist"
fi
mv heart_rate_log.txt_* "$archived_directory"

scp -r $archived_directory "$username@$host:$directory"
echo "backup was successfull"




