# Instructions
# Create a file numerical_operations.py containing the following functions:

# add(a, b)

# subtract(a, b)

# multiply(a, b)

# power(a, b)

# square_root(a)

# We assume that a and b are numbers (int or float).

# Usage
# Here is a possible test.py to test your functions:

# import numerical_operations

# print(numerical_operations.add(2, 2))
# print(numerical_operations.subtract(10, 5))
# print(numerical_operations.multiply(3, 4))
# print(numerical_operations.power(3, 3))
# print(numerical_operations.square_root(3))
# $ python test.py
# 4
# 5
# 12
# 27
# 1.73205080757
# $

import math

def add(a, b):
    return a + b

def subtract(a, b):
    return a - b

def multiply(a, b):
    return a * b

def power(a, b):
    return a ** b

def square_root(a):
    return math.sqrt(a)