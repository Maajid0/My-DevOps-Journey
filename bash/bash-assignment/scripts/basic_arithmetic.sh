#!/bin/bash

# Function that checks if input is valid and numeric 

numeric() {
    [[ "$1" =~ ^-?[0-9]+$ ]]  # Check if the input is an integer
}

# Assign input values to variables
# num1 and num2 are passed as command-line arguments
num1=$1
num2=$2

# Check if both num1 and num2 are numeric and not empty
if ! numeric "$num1" || ! numeric "$num2"; then
    echo "Error: Both inputs must be numeric values."
    exit 1
fi

# Perform arithmetic operations
# Addition of num1 and num2
addition=$((num1 + num2))

# Subtraction of num2 from num1
subtraction=$((num1 - num2))

# Multiplication of num1 and num2
multiplication=$((num1 * num2))

# Division of num1 by num2
# Check if num2 is zero to avoid division by zero
if [ "$num2" -eq 0 ]; then
    division="Error! You cannot divide by 0!"  # Error message for division by zero
else
    division=$(echo "scale=2; $num1 / $num2" | bc)  # Perform division with 2 decimal precision using bc
fi

# Display the results of the arithmetic operations
echo "The sum of $num1 and $num2 is: $addition"
echo "$num1 - $num2 = $subtraction"
echo "The product of $num1 and $num2 is: $multiplication"
echo "$num1 / $num2 = $division"
