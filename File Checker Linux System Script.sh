#!/bin/bash

release_file=/etc/os-release            
logfile=/var/log/updater.log            
errorLog=/var/log/updater_errors.log    

if grep -q "Arch" $release_file 
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu 1>>$logfile        
    if [ $? -ne 0 ]          
    then 
        echo "An error occured, please check the $errorlog file."
    fi
fi
if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file       
then
    # The host is based in Ubuntu
    # Run the apt version of the command
    sudo apt update                          
    sudo apt dist-upgrade
    if [ $? -ne 0 ]
    then 
        echo "An error occured, please check the $errorlog file."
    fi
fi

# Comment Notes:

# Line 3: Trying to figure out which distribution of Linux is being run on.
# Line 4: We are sending the updater messages to updater.log
# Line 5: We are sending all the updater failures to updater_errors.log.
# Line 10: Installing pacman manager on filesystem (1 represents standard output and 1>>$logfile means that all standard output will be sent to file $logfile.)
# Line 11: If the file has been properly installed, then the exit code should be zero.
# Line 16: Trying to figure out if the Linux distrubution is either Pop OS or Ubuntu.
# Line 20: Installs updates to packages
