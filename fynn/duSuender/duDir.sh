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

find $1 -type f -exec du -b {} +| sort -n -r | head --lines=3
