#!/bin/bash
release_file=/etc/os-release
if grep -q "Arch" $release_file
then 
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file
then
    # The host is based on Debian or Ubuntu,
    # Run the apt version of the command
    sudo apt update
    sudo apt dist-upgrade
fi

# Notes:

# Grep is a Linux / Unix command-line tool used to search for a string of characters in a specified file. 
# The text search pattern is called a regular expression. When it finds a match, it prints the line with the result. 
# In this script, grep will be used to search the file $release_file (which is an actual file on Linux distributions) and will output whatever line the string
# requested is on.
# The script may not run if the Linux distribution is neither Arch or Ubuntu.
