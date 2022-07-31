#!/bin/bash
package=htop
sudo apt install $package

if [ $? -eq 0 ]
then
    echo "The installation of $package was successful."
    echo "The new command is available here:"
else
    echo "$package failed to install."
fi