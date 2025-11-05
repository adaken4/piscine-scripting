#!/bin/bash

touch file1.txt
chmod 600 file1.txt
truncate -s 1000 file1.txt
touch -am -d '2022-01-01' file1.txt