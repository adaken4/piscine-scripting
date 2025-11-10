#!/bin/bash

big=0

for ((i=0; i < 10; i++)); do
  read -p "Enter a number: " number
  if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "ERROR: Invalid input only positive numerical characters are allowed"
    exit 1
  elif [[ $number -gt 10000 ]]; then
    echo "ERROR: The number entered is too large"
    exit 1
  fi

  if [[ $number -gt $big ]]; then
    big=$number
  fi

done

echo "The largest number is: $big"
