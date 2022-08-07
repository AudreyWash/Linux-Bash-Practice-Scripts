#!/bin/bash

release_file=/etc/os-release            
logfile=/var/log/updater.log            
errorLog=/var/log/updater_errors.log    



if grep -q "Arch" $release_file 
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu 1>>$logfile 2>>$errorlog       
    if [ $? -ne 0 ]          
    then 
        echo "An error occured, please check the $errorlog file."
    fi
fi
if grep -q "Pop" $release_file || grep -q "Ubuntu" $release_file       
then
    # The host is based in Ubuntu
    # Run the apt version of the command
    sudo apt update 1>>$logfile 2>>$errorlog     
    if [ $? -ne 0 ]
    then 
        echo "An error occured, please check the $errorlog file."
    fi
    sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog   
    if [ $? -ne 0 ]
    then 
        echo "An error occured, please check the $errorlog file."
    fi
fi

# Comment Notes:

# Line 3: Trying to figure out which distribution of Linux is being run on.
# Line 4: We are sending the updater messages to updater.log
# Line 5: We are sending all the updater failures to updater_errors.log.
# Line 10: Installing pacman manager on filesystem (1 represents standard output and 1>>$logfile means that all standard output will be sent to file $logfile, and 2>>$errorlog  means that all standard error will be sent to $errorlog.)
# Line 11: If the file has been properly installed, then the exit code should be zero.
# Line 16: Trying to figure out if the Linux distrubution is either Pop OS or Ubuntu.
# Line 20: Installs updates to packages
# Line 25: The "-y" on this line means that the shell will ask you for y/n input so that you can type "y" and run the script.

# Ultimately, the program should only output an exit code and echo back a response and all standard output/error should be sent to a file instead outputted on the screen.

# To run the script, type in /usr/local/bin/update. The shell will output permission denied errors, so switch over to root.
# Switch over to root: sudo su -  (To exit root, type exit.)
# The shell still may not output anything, so type in tail -f /var/log/updater.log (The tail -f command watches a text file in real time) 


