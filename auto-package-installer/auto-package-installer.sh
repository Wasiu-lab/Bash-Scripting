#!/bin/bash

package_name=htop

if command -v $package_name  
then
    echo "$package_name is available, let's run it..."
else
    echo "$package_name is Not available, installing it......"
    sudo apt update &&  sudo install -y $package_name
fi

$package_name
