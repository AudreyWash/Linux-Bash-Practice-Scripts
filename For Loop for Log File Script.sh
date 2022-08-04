#!/bin/bash
for file in logfiles/*.log
do
    tar -czvf $file
done

# Notes:
# This script checks for any file name that ends in .log. For every file in the logfiles directory that ends in .log will run through this script.
# The Linux tar command is used to create compressed or uncompressed Archive files and also maintain and modify them. 

# The -czvf command is used to compress an entire directory or a single file on Linux. It’ll also compress every other directory inside 
# a directory you specify–in other words, it works recursively.
# -c: Create an archive.
# -z: Compress the archive with gzip.
# -v: Display progress in the terminal while creating the archive, also known as “verbose” mode. The v is always optional in these commands, but it’s helpful.
# -f: Allows you to specify the filename of the archive.
