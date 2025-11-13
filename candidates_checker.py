# Instructions

# Create a file candidates_checker.py which will receive the number of candidates as the only argument. If a wrong number of arguments is passed the script will print Error: wrong number of arguments and exit with 1.

# When provided, the argument will always be convertible to int, the script will then ask for each candidate the name as string and the age as number.

# Once the information for each candidate is retrieved for each of them the script will check the age and print one of the following results:

# "[name] is not eligible (underaged)" when the age is less than 18.

# "[name] is not eligible (over the legal age)" when the age is more than 60.

# "[name] is eligible" when the age is between 18 and 60 (included).

# You must use dictionaries to save the data about the candidates.

# Usage
# Here is an example of your script running:

# $ python3 candidates_checker.py 3
# Add a new candidate:
# name: Edoardo
# age: 17
# Add a new candidate:
# name: Michele
# age: 60
# Add a new candidate:
# name: Lea
# age: 61
# Edoardo is not eligible (underaged)
# Michele is eligible
# Lea is not eligible (over the legal age)
# $
# Here is an example of bad usage:

# $ python3 candidates_checker.py
# Error: wrong number of arguments
# $

import sys

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Error: wrong number of arguments")
        sys.exit(1)

    try:
        num_candidates = int(sys.argv[1])
    except ValueError:
        print("Error: wrong number of arguments")
        sys.exit(1)

    candidates = []

    for _ in range(num_candidates):
        print("Add a new candidate:")
        name = input("name: ")
        age = int(input("age: "))
        candidates.append({"name": name, "age": age})

    for candidate in candidates:
        name = candidate["name"]
        age = candidate["age"]
        if age < 18:
            print(f"{name} is not eligible (underaged)")
        elif age > 60:
            print(f"{name} is not eligible (over the legal age)")
        else:
            print(f"{name} is eligible")