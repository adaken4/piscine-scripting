#!/bin/bash

number_regex='^[-+]?[0-9]*\.?[0-9]+$'
zero_regex='^[-+]?0*\.?0*$'

if [[ "$#" -ne 2 ]]; then
    echo "Error: two numbers must be provided"
elif ! [[ "$1" =~ $number_regex && "$2" =~ $number_regex ]]; then
    echo "Error: both arguments must be numeric"
elif [[ $2 =~ $zero_regex ]]; then
    echo "Error: division by zero is not allowed"
else
    result=$(echo "$1 / $2" | bc | tr -d '\n'| sed 's/\\/\\ /g')
    printf "%s\n" "$result"
fi
