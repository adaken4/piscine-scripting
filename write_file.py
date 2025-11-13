# Instructions

# Create a file write_file.py which will have a function to_do(input) with one input as an argument list[tuple[dt.date, str]] which will be a to-do list like the following example:

# [
#     (dt.date(2022, 6, 1), "fix the seat"),
#     (dt.date(2022, 6, 2), "take the trash"),
# ]
# Your function needs to format and write the input in a text file output.txt as follows:

# $ cat output.txt
# Wednesday 01 June 2022: fix the seat
# Thursday 02 June 2022: take the trash
# $
# Make sure you follow the correct format for the output. The given lists will always have the correct format and will never be empty.

# Usage
# Here is a possible test.py to test your function:

# import datetime as dt
# from write_file import to_do

# to_do_list = [
#     (dt.date(2022, 6, 1), "fix the seat"),
#     (dt.date(2022, 6, 2), "take the trash"),
# ]
# to_do(to_do_list)
# $ python test.py
# $ cat output.txt
# Wednesday 01 June 2022: fix the seat
# Thursday 02 June 2022: take the trash
# $

import datetime as dt
from typing import List, Tuple

def to_do(input: List[Tuple[dt.date, str]]) -> None:
    with open("output.txt", "w", encoding="utf-8") as file:
        for date, task in input:
            formatted_date = date.strftime("%A %d %B %Y")
            file.write(f"{formatted_date}: {task}\n")