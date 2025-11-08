#!/bin/bash

number_regex=^-?[0-9]+$
if [[ "$#" -ne 2 ]]; then
  echo "Error: The script only works with two arguments!"
elif ! [[ $1 =~ $number_regex ]] || ! [[ $2 =~ $number_regex ]]; then
  echo "Error: Only two numeric arguments are acceptable!"
else
  if [[ $1 -gt $2 ]]; then
    echo "$1 > $2"
  elif [[ $1 -lt $2 ]]; then
    echo "$1 < $2"
  else
    echo "$1 = $2"
  fi
fi
