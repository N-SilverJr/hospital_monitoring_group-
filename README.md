##LIVE CODING SUMMATIVE GROUP 21

A hospital has recently upgraded its system infrastructure to optimize data handling and improve patient monitoring. As part of this upgrade,
the hospital requires a system to record heart rate data, archive logs, and securely back them up to a remote server for future access.
In this assignment, we were required to develop three shell scripts to manage these tasks.

This assignment helped us learn about shell scripting, background process management, file archival, and remote backups via SSH.

##Below are the steps on each task
Follow the steps below to set up and run the project:

### 1. Cloning the Repository

First, clone the project repository from GitHub.

```bash
git clone https://github.com/FwyeFTiDjc2u92dk24Erk0hNGAe9cO3GWemk/heart-rate-monitor.git
cd heart-rate-monitor

##Running the Heart Rate Monitoring Script

The heart_rate_monitor.sh script simulates and logs heart rate data into a log file (heart_rate_log.txt) every second. 
The script runs in the background, and its process ID (PID) is displayed.

# Make the script executable
chmod +x heart_rate_monitor.sh

# Run the script to start monitoring heart rate
./heart_rate_monitor.sh

# Check the log file for data
tail -f heart_rate_log.txt



