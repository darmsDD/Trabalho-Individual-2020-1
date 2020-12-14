#!/bin/sh

# Set the filename
filename='tmp/pids/server.pid'
# Create an empty file
# Check the file is exists or not
if [ -f $filename ]; then
   rm $filename
   echo "$filename is removed"
else
    rm -rf tmp/pids

fi


