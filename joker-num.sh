#!/bin/bash

# Instructions

# In this exercise you are going to create a guessing game. Create the script joker-num.sh which will receive the number to guess as argument. The number should be between 1 and 100 (inclusive). The player will then have 5 tries to guess the number. To achieve this you will have to use a for loop.

# When you're trying to guess the secret number with a valid input, your program must output some tips as follow:

# First you will need to prompt a message so that the player knows what he must do: "Enter your guess (<tries_left> tries left)".

# If the number is bigger than the secret one: Go down.

# If the number si smaller than the secret one: Go up.

# If the number is the correct one: Congratulations, you found the number in <number_of_tries> moves!.

# If you ran out of tries: You lost, the number was <number>.

# Usage
# $ ./joker-num.sh 55
# Enter your guess (5 tries left):
# 50
# Go up
# Enter your guess (4 tries left):
# 75
# Go down
# Enter your guess (3 tries left):
# 55
# Congratulations, you found the number in 3 moves!
# $ ./joker-num.sh 70
# Enter your guess (5 tries left):
# 70
# Congratulations, you found the number in 1 moves!
# $
# Error handling
# If the player enters the wrong number of arguments or the number is not between 1 and 100, the program will print Error: wrong argument and exit with 1.

# If the player is writing something that is not a valid number as an answer, the program will ask again to enter a new guess and the number of tries won't be decremented.

# Here's an example for the last scenario:

# $ ./joker-num.sh 100
# Enter your guess (5 tries left):
# aaaa
# Enter your guess (5 tries left):
#                                     # Here the player only press enter
# Enter your guess (5 tries left):
# 10
# Go up
# Enter your guess (4 tries left):
# 20
# Go up
# Enter your guess (3 tries left):
# 10000
# Enter your guess (3 tries left):
# 30
# Go up
# Enter your guess (2 tries left):
# 40
# Go up
# Enter your guess (1 tries left):
# 50
# Go up
# You lost, the number was 100

if [ $# -ne 1 ]; then
    echo "Error: wrong argument"
    exit 1
fi

secret="$1"

if ! [[ "$secret" =~ ^[0-9]+$ ]] || [ "$secret" -lt 1 ] || [ "$secret" -gt 100 ]; then
    echo "Error: wrong argument"
    exit 1
fi

for (( i=1; i<=5; )); do
    tries_left=$((5 - i + 1))
    echo "Enter your guess ($tries_left tries left):"
    read guess

    if [[ -z "$guess" ]] || ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        continue
    fi
    
   
    if [ "$guess" -lt 1 ] || [ "$guess" -gt 100 ]; then
        continue
    fi

    if (( guess == secret )); then
        echo "Congratulations, you found the number in $i moves!"
        exit 0
    elif (( guess < secret )); then
        echo "Go up"
    else
        echo "Go down"
    fi

    ((i++)) 
done

echo "You lost, the number was $secret"