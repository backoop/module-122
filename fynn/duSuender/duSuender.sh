#!/bin/bash

# This returns all sizes of the directories from the current directory
find . -type f | du -b

# This returns all sizes of the files from the current directory
# sorted from the biggest to the smallest
find . -type f -exec du -b {} +| sort -n -r

# Top 3
find . -type f -exec du -b {} +| sort -n -r | head --lines=3