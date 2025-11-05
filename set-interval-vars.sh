#!/bin/bash

MY_MESSAGE="Hello World"
MY_NUM=100
MY_PI=3.142
MY_ARR=(one two three four five)

echo -e "$MY_MESSAGE\n$MY_NUM\n$MY_PI"
for ((i=0; i<${#MY_ARR[@]}; i++)); do
    printf "%s" "${MY_ARR[i]}"
    [[ $i -lt $((${#MY_ARR[@]} - 1)) ]] && printf ", "
done
echo