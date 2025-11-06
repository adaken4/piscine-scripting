#!/bin/bash

# Instructions

# Create a script burial.sh which will execute the job sleep 2 in the background
# and then prints the list of running jobs using this command
# jobs -l | awk '{print $1, $3, $4, $5, $6}'.

# Usage:

# $ ./burial.sh
# [1]+ Running sleep 2 &
# $

sleep 2 &
jobs -l | awk '{print $1, $3, $4, $5, $6}'