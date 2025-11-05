#!/bin/bash

# Display files in hard-perm directory with permissions, date, and name

ls -l --time-style=+%F\ %R | sed '1d' | awk '{print $1, $6, $7, $8}'
