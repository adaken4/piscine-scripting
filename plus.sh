#!/bin/bash

# Instructions
# In this exercise, you will make a script plus.sh that will take two arguments from the command line,
# add them and output the result.

# Usage
# $ ./plus.sh 2 3
# 5
# $

echo "$(expr $1 + $2)"