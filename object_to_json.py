# Instructions

# You just landed a new job, congrats! Your new task is to build two functions to allow new users to register to your new shiny website.

# The new registration information comes as string formatted as JSON. You need to create a file object_to_json.py that will have the following functions inside:

# create_new_user that will receive a dict and will return a new object of the class User provided below. To be valid, the input dict must have a username key and an email key. The new User will have the same username and email of the input dict. If the input dict is invalid, the default user will be returned.

# class User:
#     username = 'user'
#     email = 'something@mail.com'
# user_to_json that will receive a User and will return the object as a string in JSON format. Be aware of the Python types that can be converted to JSON!

# Usage
# Here is a possible test.py to test your functions:

# from object_to_json import create_new_user, user_to_json

# registration_0 = '{"username": "mario", "email": "mario@me.it"}'
# registration_1 = '{"city": "Rome", "country": "Italy"}'

# user_0 = create_new_user(registration_0)
# user_1 = create_new_user(registration_1)

# print(user_to_json(user_0))
# print(user_to_json(user_1))
# $ python3 test.py
# {"username": "mario", "email": "mario@me.it"}
# {}
# $

import json

class User:
    def __init__(self, username='user', email='something@mail.com', is_valid=True):
        self.username = username
        self.email = email
        self.is_valid = is_valid
    
def create_new_user(registration_str):
    try:
        data = json.loads(registration_str)
        if 'username' in data and 'email' in data:
            return User(username=data['username'], email=data['email'])
        else:
            return User(is_valid=False)
    except json.JSONDecodeError:
        return User(is_valid=False)

def user_to_json(user):
    # If the user has default values, return an empty JSON object
    if not user.is_valid:
        return '{}'
    user_dict = {
        'username': user.username,
        'email': user.email
    }
    return json.dumps(user_dict)
