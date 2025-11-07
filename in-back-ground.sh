#!/bin/sh

# Instructions

# Create a script named in-back-ground.sh that executes a job in the background
# with the following behavior:

#   1. Run the cat command on the file facts.
#   2. Pipe the output of cat into the grep command to search for the string
#      "moon".
#   3. If the grep command succeeds (i.e., it finds a line containing "moon"):
#       - Append the message "The moon fact was found!" to the file output.txt.
#       - Also, print the matching line to stdout.
#   4. If the grep command does not find the string, the file output.txt should
#      not be created.

# You must do all these steps running only one job and using the command nohup!

# Expected output:

# $ ls
# facts in-back-ground.sh
# $ ./in-back-ground.sh
# nohup: redirecting stderr to stdout
# - Australia is wider than the moon. The moon sits at 3400km in diameter, while
#   Australia's diameter from east to west is almost 4000km.
# $ ls
# facts in-back-ground.sh output.txt
# $ cat output.txt
# The moon fact was found!
# $

# $ ./in-back-ground.sh                # If the string isn't found
# nohup: redirecting stderr to stdout
# $ ls
# facts in-back-ground.sh
# $ cat output.txt
# cat: output.txt: No such file or directory
# $

# In order to test your solution, you need to create your own facts file. This
# file must not be submitted!

nohup bash -c 'cat facts | grep "moon" && echo "The moon fact was found!" >> output.txt' &