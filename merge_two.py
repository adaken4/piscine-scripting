# Instructions

# Create a file merge_two.py which will have a function named merge_two(). This function will accept one dictionary. It will prompt the user to create a new dictionary asking for keys and values. The function will always convert the values into integers.

# As a return it will create a third one which will be the merge of the two dictionaries and return it as a serialized JSON string.

# If the key entered by the user is exit the function will stop asking for new key/values pairs and proceed to generate the desired output.

# Here is the prototype of the function:

# def merge_two(first_dict):
#     # this is a function,
#     # write your code here
# Usage
# Here is a possible code to test your function. Put it in another file (ex: test.py):

# from merge_two import merge_two

# first = {
#     "Bob": 36,
#     "Louise": 23,
#     "Lea": 34
# }

# print(merge_two(first))
# Run your test file with the following command:

# $ python3 test.py
# Add a new entry:
# key: Louise
# value: 44
# Add a new entry:
# key: Romolo
# value: 30
# Add a new entry:
# key: Lea
# value: 22
# Add a new entry:
# key: exit
# {"Bob": 36, "Louise": 44, "Lea": 22, "Romolo": 30}
# $

import json

def merge_two(first_dict):
    second_dict = {}
    
    while True:
        print("Add a new entry:")
        key = input("key: ")
        if key.lower() == "exit":
            break
        value = input("value: ")
        try:
            second_dict[key] = int(value)
        except ValueError:
            print("Please enter a valid integer for the value.")
    
    merged_dict = first_dict.copy()
    merged_dict.update(second_dict)
    
    return json.dumps(merged_dict)