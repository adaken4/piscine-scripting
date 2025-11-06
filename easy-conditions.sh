#!/bin/bash

# Instructions

# For this exercise it will be given a variable "X" and "Y" and you have to
# create a script easy-conditions.sh that will check if "X" is greater than
# "Y", if it is print "true" and if it's not print "false".

# Usage:
# $ export X=6 Y=14
# $ echo $X $Y
# 6 14
# $ ./easy-conditions.sh
# false
# $ X=29 Y=12
# $ echo $X $Y
# 29 12
# $ ./easy-conditions.sh
# true
# $

if [ $X -gt $Y ]; then
  echo "true"
else
  echo "false"
fi