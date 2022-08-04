find /etc -type f 1> /dev/null 
find /etc -type f 2> /dev/null
find /etc -type f &> /dev/null

# Notes:
# 1 designates standard output
# 2 designates standard error

# /dev/null is a null device file. This will discard anything written to it, and will return EOF on reading. 
# This is a command-line hack that acts as a vacuum, that sucks anything thrown to it.
# The find command is used to search and locate the list of files and directories based on conditions you specify for files that match the arguments.
# The "&" symbol above means that we want to address both standard output and standard error in the statement.
