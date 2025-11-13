# Instructions

# You need to write a script, skip_secrets.py, that will be able to decrypt the text coming form a specific file.

# The script will receive a file name as the first argument, check if the file is readable, filter the content by skipping all the lines containing pineapple and save the result in a file out.txt

# If the file passed as argument is not readable or the number of arguments is not the one expected, the script should exit with a status code 1.

# Usage
# Below an example of how the script is supposed to work:

# $ cat -e file.txt
# A normal pizza $
# Another normal pizza$
# A pizza with pineapple$
# Yet another very normal and delicious pizza$
# $ python3 skip_secrets.py
# $ echo $?
# 1
# $ python3 skip_secrets.py file.txt
# $ cat out.txt
# A normal pizza $
# Another normal pizza$
# A pizza with pineapple$
# Yet another very normal and delicious pizza$
# $

import sys
import os

def main():
    if len(sys.argv) != 2:
        sys.exit(1)

    input_file = sys.argv[1]

    if not os.path.isfile(input_file) or not os.access(input_file, os.R_OK):
        sys.exit(1)

    with open(input_file, 'r', encoding='utf-8') as infile, open('out.txt', 'w', encoding='utf-8') as outfile:
        for line in infile:
            if 'pineapple' not in line:
                outfile.write(line)
                
if __name__ == "__main__":
    main()