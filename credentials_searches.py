# Instructions

# Create a file credentials_searches.py that contains a function credentials_search which takes no parameters and searches for the keys password and secret in a file called logs.json.

# If both keys are found, the function should create a new json file named credentials.json and save the values of those keys in it.

# If only one of the keys is found, the function should create a new json file named credentials.json and save the value of that key in it.

# If neither key is found, the function should not create the credentials.json file.

# If the logs.json file is empty or is not a json file, the function should not create the credentials.json file.

# If the logs.json file does not exist, the function should not create the credentials.json file.

# If the keys are found in a nested object, the function should create the credentials.json file and save the values of the keys in it.

# Usage
# Here is an example of how to use the credentials_search function:

# With this file logs.json:

# {
#   "password": "test_password",
#   "other": "value",
#   "secret": "test_secret"
# }
# If you run your function:

# credentials_search()
# Your function should generate this file credentials.json:

# {
#   "password": "test_password",
#   "secret": "test_secret"
# }

import json
import os

def credentials_search() -> None:
    if not os.path.exists("logs.json"):
        return

    try:
        with open("logs.json", "r", encoding="utf-8") as file:
            data = json.load(file)
    except (json.JSONDecodeError, ValueError):
        return

    credentials = {}
    def _collect(obj):
        if isinstance(obj, dict):
            for key, value in obj.items():
                if key in ("password", "secret"):
                    credentials[key] = value
                else:
                    _collect(value)
        elif isinstance(obj, list):
            for item in obj:
                _collect(item)
                
    _collect(data)
    
    if credentials:
        with open("credentials.json", "w", encoding="utf-8") as file:
            json.dump(credentials, file, indent=2)