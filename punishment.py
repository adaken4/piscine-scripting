# Instructions
# Often in schools we are asked to copy hundreds of sentences in order to better remember not to do something, this punishment is very old and quite boring!

# Thankfully we now have Python that can do the job for us. In order to do so create a file punishment.py which will contain a function do_punishment having 3 arguments:

# first_part: which will be a string.

# second_part: which will be also a string.

# nb_lines: which will be a number.

# Here is the prototype of the function:

# def do_punishment(first_part, second_part, nb_lines):
# The function will concatenate first_part and second_part, adding a space in between them and a . at the end of second_part. It will repeat this process for nb_lines times.

# The function will return a single string containing all the repeated sentences.

# In case first_part and second_part have empty spaces at the start or at the end those spaces should be trimmed (removed from the strings).

# Usage
# Here is a possible test.py to test your functions:

# import punishment

# print(punishment.do_punishment('   The first half   ', '   and the second  ', 4), end='')
# print(punishment.do_punishment('Will not', 'show', 0), end='')
# print(punishment.do_punishment('', '', 3), end='')
# $ python test.py
# The first half and the second.
# The first half and the second.
# The first half and the second.
# The first half and the second.
#  .
#  .
#  .

def do_punishment(first_part, second_part, nb_lines):
    first_part = first_part.strip()
    second_part = second_part.strip()
    sentence = f"{first_part} {second_part}."
    result = (sentence + "\n") * nb_lines
    return result