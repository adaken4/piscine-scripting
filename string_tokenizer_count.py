# Instructions

# Create a file string_tokenizer_count.py that contains a function tokenizer_counter which takes in a string as a parameter and returns a dictionary of words and their count in the string.

# The function should remove any punctuation from the string and convert it to lowercase before counting the words.

# The function should return a dictionary of words and their count, sorted alphabetically by word.

# Usage
# Here is an example of how to use the function in a test.py script:

# string = "This is a test sentence, with various words and 123 numbers!"
# result = tokenizer_counter(string)
# print(result)
# And its output:

# $ python3 test.py
# {'123': 1, 'a': 1, 'and': 1, 'is': 1, 'numbers': 1, 'sentence': 1, 'test': 1, 'this': 1, 'various': 1, 'with': 1, 'words': 1}
# $

import re
from collections import Counter

def tokenizer_counter(input_string: str) -> dict[str, int]:
    cleaned = re.sub(r"[^\w\s]", "", input_string.lower())
    words = cleaned.split()
    word_count = Counter(words)
    return dict(sorted(word_count.items()))