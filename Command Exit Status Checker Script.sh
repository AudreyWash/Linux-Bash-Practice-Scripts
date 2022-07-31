package=htop
sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]
then
    echo "The installation of $package was successful."
    echo "The new command is available here:"
else
    echo "$package failed to install." >> package_install_failure.log
fi


# Output:
# The new command is available here:
   #/usr/bin/htop
   
# The contents of the file have been printed into .log file package_install_results.log

# If I type in ls, package_install_results.log will show up as a directory, and if I type in cat package_install_results.log, the installation contents
# will be there. 

# The two greater than symbols (>>) append a command/package to a file or creates one if it doesn't exist. (Appends the data in an already existing
# existing file.)

# .log files are a set of records that Linux maintains for the administrators to keep track of important events.
