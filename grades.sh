#!/bin/bash

# Instructions

# Create a script called grades.sh that takes, as an argument, the number of students to be evaluated. Once the number is specified, the script should prompt you to enter each student’s name and grade.

# Grades must be numeric values only, within the range of 0 to 100.

# For each student, the script should return an evaluation based on their grade as follows:

# If the student grade is anything equal or greater than 90 you will return the string "<name>: You did an excellent job!":

# $ ./grades.sh 1
# Student Name #1: Sara
# Student Grade #1: 90
# Sara: You did an excellent job!
# $
# If the student grade is anything equal or greater than 70 you will return the string "<name>: You did a good job!":

# $ ./grades.sh 1
# Student Name #1: Sara
# Student Grade #1: 75
# Sara: You did a good job!
# $
# If the student grade is anything equal or greater than 50 you will return the string "<name>: You need a bit more effort!":

# $ ./grades.sh 1
# Student Name #1: Sara
# Student Grade #1: 51
# Sara: You need a bit more effort!
# $
# If the student grade is anything lower than 50 you will return the string "<name>: You had a poor performance!":

# $ ./grades.sh 1
# Student Name #1: Sara
# Student Grade #1: 34
# Sara: You had a poor performance!
# $
# Error handling
# All errors will print a specific message on stderr (ending with a newline) and returns a specific non-zero value:

# Wrong number of arguments: "Error: expect 1 argument only!", exit with 1.

# If the student grade is not a number or is greater than 100: Error: The grade <grade> is not a valid input. Only numerical grades between 0 and 100 are accepted., exit with 1.

# $ ./grades.sh 2
# Student Name #1: Sara
# Student Grade #1: 101
# Error: The grade '101' is not a valid input. Only numerical grades between 0 and 100 are accepted.
# $ ./grades.sh 2
# Student Name #1: Bob
# Student Grade #1: ten
# Error: The grade 'ten' is not a valid input. Only numerical grades between 0 and 100 are accepted.
# $ ./grades.sh 1 2 3
# Error: expect 1 argument only!
# $
# Usage
# $ ./grades.sh 4
# Student Name #1: Sara   # introduced by the user
# Student Grade #1: 34    # introduced by the user
# Student Name #2: Norman
# Student Grade #2: 56
# Student Name #3: James
# Student Grade #3: 78
# Student Name #4: Albert
# Student Grade #4: 90
# Sara: You had a poor performance!
# Norman: You need a bit more effort!
# James: You did a good job!
# Albert: You did an excellent job!
# $

handle_error() {
    local message="$1"
    echo "$message" >&2
    exit 1
}


if [ "$#" -ne 1 ]; then
    handle_error "Error: expect 1 argument only!"
fi


if ! [[ "$1" =~ ^[0-9]+$ ]] || [ "$1" -eq 0 ]; then
    handle_error "Error: The number of students must be a positive integer."
fi


NUM_STUDENTS=$1


declare -a student_names
declare -a student_grades



for (( i=1; i<=$NUM_STUDENTS; i++ )); do
   
    read -r -p "Student Name #$i: " name

    
    while true; do
        read -r -p "Student Grade #$i: " grade

        if ! [[ "$grade" =~ ^[0-9]+$ ]]; then
            handle_error "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted."
        fi

        grade_int=$grade

        if [ "$grade_int" -lt 0 ] || [ "$grade_int" -gt 100 ]; then
            handle_error "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted."
        fi

        break
    done

  
    student_names+=("$name")
    student_grades+=("$grade_int")

done


for (( i=0; i<$NUM_STUDENTS; i++ )); do
    current_name="${student_names[$i]}"
    current_grade="${student_grades[$i]}"

    if [ "$current_grade" -ge 90 ]; then
        echo "$current_name: You did an excellent job!"
    elif [ "$current_grade" -ge 70 ]; then
        echo "$current_name: You did a good job!"
    elif [ "$current_grade" -ge 50 ]; then
        echo "$current_name: You need a bit more effort!"
    else
       
        echo "$current_name: You had a poor performance!"
    fi
done

exit 0