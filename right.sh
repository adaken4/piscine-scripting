#!/bin/bash

# Instructions

# Create a file right.sh where you write a shell command that lists all
# the files in the current directory except those with the .txt extension,
# and save the resulting list into a file named filtered_files.txt.
# Check the example below:

# Usage:
# $ ls
# sample1.txt sample2 sample3.txt sample4
# $ ./right.sh
# $ cat filtered_files.txt
# sample2
# sample4
# $

# SOLUTION EXPLANATION:
# - `ls`: Lists all files and directories in the current directory
# - `grep -v '\.txt$'`: Filters out lines ending with .txt
#   - `-v`: inverts the match (shows lines that DON'T match the pattern)
#   - `\.txt$`: regex pattern where:
#     - `\.`: matches a literal dot (escaped)
#     - `txt`: matches the letters "txt"
#     - `$`: anchors to end of line (ensures .txt is at the end)
# - `> filtered_files.txt`: redirects the output to the file

ls | grep -v '\.txt$' > filtered_files.txt