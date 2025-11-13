# Instructions

# Tokenization is the process of breaking down a string into smaller pieces, called tokens. In natural language processing, tokenization typically refers to the process of breaking down a sentence into words or breaking down a paragraph into sentences.

# Create a file string_processing.py which will have a function tokenize(sentence) that given a sentence will do the following:

# remove all punctuation marks and special characters

# separate all words like so: "it's not 3" => ['it', 's', 'not', '3']

# put all the words in lowercase

# return a list of all the words.

# Usage
# Here is a possible test.py to test your functions:

# import string_processing

# if __name__ == '__main__':
#     my_sentence = "It's not possible, you can't ask for a raise"
#     print(string_processing.tokenize(my_sentence))
# $ python test.py
# ['it', 's', 'not', 'possible', 'you', 'can', 't', 'ask', 'for', 'a', 'raise']

import re

def tokenize(sentence):
    sentence = sentence.lower()
    tokens = re.split(r"[^a-z0-9]+", sentence)
    return [token for token in tokens if token]