#!/bin/bash
for file in logfiles/*.log
do
    tar -czvf $file.tar.gz $file     # We type $ file again in order to archive the file we want.
done



# Output Directions:

# Type in:
# 1. mkdir log files
# 2. cp /var/log/*.logfiles/
# 3. ls logfiles/ # (This will list all files that end in .log
# Run the script: ./myscript.sh



# Notes:
# This script checks for any file name that ends in .log. For every file in the logfiles directory that ends in .log will run through this script.
# The Linux tar command is used to create compressed or uncompressed Archive files and also maintain and modify them. 

# The -czvf command is used to compress an entire directory or a single file on Linux. It’ll also compress every other directory inside 
# a directory you specify–in other words, it works recursively.
# -c: Create an archive.
# -z: Compress the archive with gzip.
# -v: Display progress in the terminal while creating the archive, also known as “verbose” mode. The v is always optional in these commands, but it’s helpful.
# -f: Allows you to specify the filename of the archive.
