# Instructions

# Create a file custom_calendar.py which will have 2 functions:

# day_from_number(day_number)

# day_to_number(day)

# Those functions perform conversion between day index and day word:

# 1 = Monday

# 2 = Tuesday

# 3 = Wednesday

# 4 = Thursday

# 5 = Friday

# 6 = Saturday

# 7 = Sunday

# You should return None if the input is invalid (invalid number or day string).

# Usage
# Here is a possible test.py to test your functions:

# import custom_calendar

# print(custom_calendar.day_from_number(2))
# print(custom_calendar.day_from_number(1))
# print(custom_calendar.day_from_number(1000))
# print(custom_calendar.day_to_number('Sunday'))
# print(custom_calendar.day_to_number('invalid day'))
# $ python test.py
# Tuesday
# Monday
# None
# 7
# None
# $

def day_from_number(day_number):
    days = {
        1: "Monday",
        2: "Tuesday",
        3: "Wednesday",
        4: "Thursday",
        5: "Friday",
        6: "Saturday",
        7: "Sunday"
    }
    return days.get(day_number, None)

def day_to_number(day):
    days = {
        "Monday": 1,
        "Tuesday": 2,
        "Wednesday": 3,
        "Thursday": 4,
        "Friday": 5,
        "Saturday": 6,
        "Sunday": 7
    }
    return days.get(day, None)