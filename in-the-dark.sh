#!/bin/bash

# Instructions

# Create a script in-the-dark.sh which will execute a job in the background
# that will run the command ls which will recursively list all files and
# directories in the current directory and its subdirectories. The output will
# be piped into the grep command, which will search for all files with the
# .txt extension. After the search is complete, you must redirect to a file
# "new" the following string "Search complete". You also need to List all
# background jobs.

# You must do all these steps running only one job!

# Expected output:

# $ ./in-the-dark.sh
# [1]+  Running            "Your running job, this is just an example of output"
# news_amazon.txt
# model_forecasts.txt
# Ecommerce_purchases.txt
# breast_cancer_readme.txt
# shadow.txt
# standard.txt
# thinkertoy.txt
# $ cat new
# Search complete
# $

ls -R . | grep '\.txt$' && echo "Search complete" > new &
jobs