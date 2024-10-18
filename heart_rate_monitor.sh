#!/usr/bin/env bash

read -p "Enter device name: " device_name

if [ ! -f  "heart_rate_log.txt" ]; then
	touch  "heart_rate_log.txt"
else
	echo "The file already exists!"
fi

while true; do
	time_stamp=$( date "+%Y-%m-%d %H:%M:%S")
	simulated_rate=$(( RANDOM % 40 + 60 ))
	echo "$time_stamp $device_name $simulated_rate" >> heart_rate_log.txt
	sleep 1
done &
echo "The PID is: $!" 
	
