# Instructions
# Create a file numerical_operations_the_return.py containing the following functions:

# modulo(a, b)

# divide(a, b)

# integer_division(a, b)

# We assume that a and b are numbers (int or float).

# In case of a division by zero or modulo zero your functions should return 0.

# Usage
# Here is a possible test.py to test your functions:

# import numerical_operations_the_return

# print(numerical_operations_the_return.modulo(10, 3))
# print(numerical_operations_the_return.divide(10, 3))
# print(numerical_operations_the_return.divide(10, 0))
# print(numerical_operations_the_return.integer_division(10, 3))
# $ python3 test.py
# 1
# 3.3333333333333335
# 0
# 3
# $

def modulo(a, b):
    if b == 0:
        return 0
    return a % b

def divide(a, b):
    if b == 0:
        return 0
    return a / b

def integer_division(a, b):
    if b == 0:
        return 0
    return a // b