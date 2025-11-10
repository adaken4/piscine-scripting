#!/bin/bash

# Instructions

# In this exercise you will make a script calculator.sh that will take 3 arguments, calculate the result and print it on the standard output.

# The first argument and the third argument will be numbers.

# The second argument will be the operator.

# Each operator should have its own function named as follow:

# +: do_add().

# -: do_sub().

# *: do_mult().

# /: do_divide().

# Each function will receive two arguments, the left number and the right number, and return the result of the operation.

# The functions assume that the input is valid, so the input must be checked before calling the functions.

# To choose which function to call you must use the case statement.

# The functions will also be tested individually, so it is important to name each function exactly as above, the behavior of the functions have to match the exercise instructions.

# Usage
# $ ./calculator.sh 20 "*" 3
# 60
# $ ./calculator.sh 20 / 20
# 1
# $ ./calculator.sh -1 - 10
# -11
# $
# Error handling
# All errors will print a specific message on stderr (ending with a newline) and returns a specific non-zero value:

# Wrong number of arguments: "Error: expect 3 arguments", returns 1.

# Division by 0: "Error: division by 0", exit with 2.

# Invalid operator: "Error: invalid operator", exit with 3.

# Invalid number(s): "Error: invalid number", exit with 4.

# Negative numbers are also a valid input.

num1=$1
operator=$2
num2=$3

if [ $# -ne 3 ]; then
  echo "Error: expect 3 arguments" >&2
  exit 1
fi

if ! test "$num1" -eq "$num1" -o "$num2" -eq "$num2"; then
  echo "Error: invalid number" >&2
  exit 4
fi

do_add() {
  echo $((num1 + num2))
}

do_sub() {
  echo $((num1 - num2))
}

do_mult() {
  echo $((num1 * num2))
}

do_divide() {
  if [ $num2 -eq 0 ]; then
    echo "Error: division by 0" >&2
    exit 2
  fi
  echo $((num1 / num2))
}

case $2 in
  +) 
    do_add
    ;;
  -) 
    do_sub
    ;;
  \*) 
    do_mult
    ;;
  /) 
    do_divide
    ;;  
  *) 
    echo "Error: invalid operator" >&2
    exit 3
    ;;
esac
