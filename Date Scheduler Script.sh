#!/bin/bash
# Install at command
#sudo apt install at

logfile=job_results.log

echo "The script ran at the following time: $(date)" >> $logfile


#./newscript.sh
# ls (To show job_results.log in the system directories)
# cat job_results.log
# Type in at 15:32 -f ./newscript.sh

# In order to be more secure, type in the full command path of a Linux command: 
# Example: which echo -> /usr/bin/echo is the full command path of echo
# Example: which date -> /usr/bin/date is the full command path date