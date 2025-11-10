# #!/bin/bash

# Instructions

# In this exercise, you will create a script called check-user.sh that accepts two arguments and returns information about a specified user. Each output should end with a newline.

# The first argument is a flag that defines the script’s behavior:

# -e: Check if the user exists, returning yes or no accordingly.

# -i: Display information about the user.

# The second argument is the username to be checked.

# The user information must be displayed in the same format as it appears in /etc/passwd.

# Usage
# $ ./check-user.sh -e root
# yes
# $ ./check-user.sh -i root
# root:x:0:0:root:/root:/bin/bash
# $ ./check-user.sh -e unknown
# no
# $ ./check-user.sh -i unknown
# $
# Your results may appear slightly different.

# Error handling
# All errors will print a specific message on stderr (ending with a newline) and returns a specific non-zero value:

# Wrong number of arguments: "Error: expect 2 arguments", exit with 1.

# First argument different from -e or -i: "Error: unknown flag", exit with 1.

if [ $# -ne 2 ]; then
  echo "Error: expect 2 arguments" >&2
  exit 1
fi

flag="$1"
user="$2"

if [[ "$flag" != "-e" && "$flag" != "-i" ]]; then
  echo "Error: unknown flag" >&2
  exit 1
fi

user_info=$(getent passwd "$user")

if [ "$flag" = "-e" ]; then
  if [ -n "$user_info" ]; then
    echo "yes"
  else
    echo "no"
  fi
  exit 0
fi

if [ "$flag" = "-i" ]; then
  if [ -n "$user_info" ]; then
    echo "$user_info"
  fi
  exit 0
fi
