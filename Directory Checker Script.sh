#!/bin/bash
directory=/etc
if [ -d $directory ]
then 
    echo "The directory $directory exists."
else 
    echo "The directory $directory doesn't exist."
fi 

echo "The exit code for this script run is $?"

#Output:
# The directory /etc exists
# The exit code for this script run is 0

# If I type in ls -l /etc, I can see the contents of the directory.
