#!/bin/bash

# Script Description
# This script takes two numbers as input and performs basic arithmetic operations: 
# addition, subtraction, multiplication, and division. It then displays the results.

# Input Validation
# Ensure that exactly two numbers are provided as input arguments.
if [ $# -ne 2 ]; then
    echo "Usage: $0 <number1> <number2>"
    echo "Please provide two numbers as arguments."
    exit 1
fi

# Assigning Input to Variables
# The numbers provided by the user are assigned to variables num1 and num2.
num1=$1
num2=$2

# Arithmetic Operations
# Perform the basic arithmetic operations: addition, subtraction, multiplication, and division.
addition=$((num1 + num2))
subtraction=$((num1 - num2))
multiplication=$((num1 * num2))

# Handle Division by Zero
# Check if num2 is zero before performing division to avoid an error.
if [ "$num2" -eq 0 ]; then
    division="Error! You cannot divide by 0!"
else
    division=$((num1 / num2))
fi

# Output Results
# Display the results of the arithmetic operations in the terminal.
echo "The sum of $num1 and $num2 is: $addition"
echo "$num1 - $num2 = $subtraction"
echo "The product of $num1 and $num2 is: $multiplication"
echo "$num1 / $num2 = $division"


