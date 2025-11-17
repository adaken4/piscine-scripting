#!/bin/bash

# Instructions

# Create a file easy-perm.sh, which will change the default permissions for the example.txt and example2.txt files inside the folder easy-perm, to the ones below:

# Expected Output:

# $ ls -l easy-perm
# total 8
# -rwxr--rw- 1 user user 689 dez 13 16:14 example2.txt
# -rw-r--r-- 1 user user 348 dez 13 16:14 example.txt
# $

chmod 644 easy-perm/example.txt
chmod 746 easy-perm/example2.txt