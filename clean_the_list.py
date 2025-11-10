# Instructions
# Create a file clean_the_list.py that contains a function clean_list which takes and returns a list of strings and performs the following operations on each list item:

# Removes all spaces before and after (but not between words).

# Capitalizes the first letter (first letter only, other ones should be to lowercase).

# Adds its index number before a separator x/ .

# An empty list as input should return an empty list as output.

# And don't forget the milk! (add it at the end of the list if missing).

# Usage
# Here is an example of how to use the clean_list function:

# import clean_the_list
# shopping_list = ['tomatoes', 'pastas', 'milk', 'salt']
# print(clean_the_list.clean_list(shopping_list))
# This will output:

# $ python test.py
# ['1/ Tomatoes', '2/ Pastas', '3/ Milk', '4/ Salt']
# $

def clean_list(items):
    if not items:
        return []
    
    cleaned_items = []
    for index, item in enumerate(items, start=1):
        cleaned_item = item.strip().capitalize()
        cleaned_items.append(f"{index}/ {cleaned_item}")
        
    # Check if "Milk" is already in the cleaned list
    has_milk = any("Milk" in cleaned_item for cleaned_item in cleaned_items)
    
    if not has_milk:
        cleaned_items.append(f"{len(cleaned_items) + 1}/ Milk")
    
    return cleaned_items