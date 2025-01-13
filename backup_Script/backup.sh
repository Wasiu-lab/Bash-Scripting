#!/bin/bash

#Check to make sure the user has entered exactly two arguments
if [ $# -ne 2 ]
then
    echo "Usgae: backup.sh <source_directory> <destination_directory>"
    echo "Please try again"
    exit 1
fi

# Check tos see if rsync is installed
if ! command -v rsync &> /dev/null 2>&1	
then
    echo "This Script requires rsync to be installed"
    echo "Please Use your distribution's package manager to install rsync and try again"
    exit 2
fi

# Capture the curent date, and store it in a format YYY-MM-DD
# This format is used maily for formating and sorting purposes

current_date=$(date +'%Y-%m-%d')
# --dry-run option is used to simulate the rsync command
# This is useful for testing the rsync command before running it and it will come at th end of the rsync command

rsync_options="-avb --backup-dir $2/$current_date --delete"

# Run the rsync command and log the output
log_file="backup_$current_date.log"
rsync $rsync_options "$1/" "$2/current" >> "$log_file" 2>&1

# Confirm completion
echo "Backup completed successfully. Logs can be found in $log_file."