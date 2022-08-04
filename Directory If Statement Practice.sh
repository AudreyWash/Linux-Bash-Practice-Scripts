#!/bin/bash
if [ -d /etc/pacman.d ]
then 
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu 
fi

if [ -d /etc/apt ]
then
    # The host is based on Debian or Ubuntu,
    # Run the apt version of the command
    sudo apt update
    sudo apt dist-upgrade
fi

# Notes:

# -Syu is the command on Arch Linux systems that would be used to install all updates that are currently available. 
# pacman.d is a directory commonly used on Arch Linux systems that manages software packages in Linux. 
# [ -d /etc/apt ] is looking for a directory by the name of apt. apt is a file that is common on mostly Debian or Ubuntu distributions.

# NOTE: The script will run based on what distribution of Linux you are using. If you are using Arch Linux, the if-statement for pacman.d will run, and
# if on Debian or Ubuntu, then the if-statement for apt will run.
