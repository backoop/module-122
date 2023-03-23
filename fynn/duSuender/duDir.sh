#!/bin/bash
# Write Scrpt with parameter to get the dir and show the biggest files init

# Check if the parameter is set
if [ -z "$1" ]
then
    echo "USAGE: bash duDir.sh <dir>"
    exit 1
fi

# Check if the parameter is a directory
if [ ! -d "$1" ]
then
    echo "ERROR: $1 is not a directory"
    exit 1
fi
# Return the whole size of the directory
echo "Whole size of $1"
du -b "$1"

echo
echo "Top 3 biggest files in $1"
find $1 -type f -exec du -b {} +| sort -n -r | head --lines=3
