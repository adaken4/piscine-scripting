#!/bin/bash

# Instructions

# Create a script hard-conditions.sh which will verify if a file exists and
# if it is executable. If it exists and it is executable you must print "File
# is executable" if it is not executable or it doesn't exist you must print
# "File is not an executable or does not exist".

# $ ls -l
# -rw-rw-r-- 1 user user    19 dez 28 14:19  docs
# -rwxrwxr-x 1 user user    95 dez 29 15:48  example.sh
# $ ./hard-conditions.sh path/to/example.sh
# File is executable
# $ ./hard-conditions.sh path/to/docs.sh
# File is not an executable or does not exist
# $

if [ -x "$1" ]; then
  echo "File is executable"
else
  echo "File is not an executable or does not exist"
fi