#!/usr/bin/env bash

# Prompt the user to enter a device name
read -p "Enter device name: " device_name

# Check if the heart_rate_log.txt file exists
if [ ! -f  "heart_rate_log.txt" ]; then
        # If the file does not exist, create it
        touch  "heart_rate_log.txt"
else
        # If the file already exists, print this
        echo "The file already exists!"
fi

# Start an infinite loop
while true; do
        # Get the current timestamp in the format "YYYY-MM-DD HH:MM:SS"
        time_stamp=$( date "+%Y-%m-%d %H:%M:%S")
        # Generate a simulated heart rate value between 60 and 100
        simulated_rate=$(( RANDOM % 40 + 60 ))
        # Append the timestamp, device name, and simulated heart rate to the log file
        echo "$time_stamp $device_name $simulated_rate" >> heart_rate_log.txt
        # Wait for 1 second before the next iteration
        sleep 1
done & # Run the loop in the background

# Display the process ID
echo "The PID is: $!"
