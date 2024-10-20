#!/usr/bin/env bash

# Create a timestamp variable using the the format YYYYMMDD_HHMMSS
time_stamp=$( date "+%Y%m%d_%H%M%S")

# Check if the file 'heart_rate_log.txt' does not exist
if [ ! -f heart_rate_log.txt ]; then
	# If the file does not exist, print a message saying so
        echo "The file doesn't exit"
else
	# If the file exists, rename the file with the timestamp appended to the filename
        mv "heart_rate_log.txt" "heart_rate_log.txt_$time_stamp"
	 # Print a message confirming that the log file has been archived with the new name
        echo "log file archived in heart_rate_log.txt_$time_stamp"

fi
