# Instructions

# Create a file flex_function.py that contains a function create_person which takes in first name and last name as required positional parameters, age and gender as positional or keyword parameters, size and job as keyword only parameters, with size and job default values: size=1.83, job="taxidermist", and returns a dictionary object like this:

# {
#     'first_name': 'Kevin',
#     'last_name': 'Boulin',
#     'age': 34,
#     'gender': 'male',
#     'size': 1.83,
#     'job': 'taxidermist',
# }
# Usage
# Here is an example of how to use the create_person function:

# person = create_person("Kevin", "Boulin", 34, "male")
# print(person)
# And its output:

# $ python3 ./test.py
# {'first_name': 'Kevin', 'last_name': 'Boulin', 'age': 34, 'gender': 'male', 'size': 1.83, 'job': 'taxidermist'}
# $

def create_person(first_name, last_name, age=None, gender=None, *, size=1.83, job="taxidermist"):
    return {
        'first_name': first_name,
        'last_name': last_name,
        'age': age,
        'gender': gender,
        'size': size,
        'job': job,
    }