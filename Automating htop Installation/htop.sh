#!/bin/bash

command=/c/Users/HP/Desktop/Folder/Learning/htop

if [ -f $command ] 
then
    echo "$command is available, let's run it..."
else
    echo "$command is Not available, installing it......"
    sudo apt update && sudo install -y htop
fi

$command
