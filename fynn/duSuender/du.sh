#!/bin/bash

# Return SIZE    DIRECTORY/FILE
# In this case it is . bc of the current directory
du 
# -h Return everything on human readable unit
du -h
# -b Return everything on byte unit
du -b

# Some Systems round the size to the next 512 byte block
# This is the Reason, why the size is not the same as the size of the file
du --apparent-size --block-size=1 -h

