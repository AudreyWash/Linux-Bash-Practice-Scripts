#!/bin/bash

release_file=/etc/os-release            # Trying to figure out which distribution of Linux is being run on.
logfile=/var/log/updater.log            # We are sending the updater messages to updater.log
errorLog=/var/log/updater_errors.log    # We are sending all the updater failures to updater_errors.log.

if grep -q "Arch" $release_file 
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu         # Installing pacman manager on filesystem
    if [ $? -ne 0 ]          # If the file has been properly installed, then the exit code should be zero.
    then 
        echo "An error occured, please check the $errorlog file."
    fi
fi
if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file       # Trying to figure out if the Linux distrubution is either Pop OS or Ubuntu
then
    # The host is based in Ubuntu
    # Run the apt version of the command
    sudo apt update                          # Installs updates to packages
    sudo apt dist-upgrade
    if [ $? -ne 0 ]
    then 
        echo "An error occured, please check the $errorlog file."
    fi
fi
