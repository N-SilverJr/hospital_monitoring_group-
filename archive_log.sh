#!/usr/bin/env bash

time_stamp=$( date "+%Y%m%d_%H%M%S")
if [ ! -f heart_rate_log.txt ]; then
        echo "The file doesn't exit"
else
        mv "heart_rate_log.txt" "heart_rate_log.txt_$time_stamp"
        echo "log file archived in heart_rate_log.txt_$time_stamp"

fi

