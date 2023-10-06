#!/bin/sh
# write a given string to given file
# Author: Ahmed AbdulAzeem

if [ $# -eq 2 ]
then
	writefile=$1
    writestr=$2

    # Create the directory path if it doesn't exist
    mkdir -p $(dirname "$writefile")

    touch "$writefile"

    # Create the new file and write the content
    echo "$writestr" > "$writefile"

    exit 0
else
    echo "Error: PLease specify writefile and writestr command line arguments"
    exit 1
fi