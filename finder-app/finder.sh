#!/bin/sh
# Search a string in a directory
# Author: Ahmed AbdulAzeem


if [ $# -gt 1 ] && [ $# -lt 2 ]
then
	echo "Error: PLease specify filedir and searchstr command line arguments"
    exit 1
fi

filedir=$1
searchstr=$2

if [ -d "$filedir" ]
then
    echo "$filedir created"
else
    echo "Error: The command line arguments does not represent a directory on the filesystem" 
    exit 1
fi

file_count=$(find "$filedir" -type f | wc -l)
matching_count=$(grep -r -c "$searchstr" "$filedir" | awk -F ':' '{sum += $2} END {print sum}')

echo "The number of files are $file_count and the number of matching lines are $matching_count"





