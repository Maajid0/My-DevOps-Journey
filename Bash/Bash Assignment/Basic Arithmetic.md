# Basic Arithmetic Operations Script

---

## Script Description
This script takes two numbers as input (from the command line arguments) and performs basic arithmetic operations:
addition, subtraction, multiplication, and division. It then displays the results of each operation.

---

## Script Code

```bash
#!/bin/bash

# Assign input values to variables
# num1 and num2 are passed as command-line arguments
num1=$1
num2=$2

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
    division=$((num1 / num2))  # Perform division if num2 is not zero
fi

# Display the results of the arithmetic operations
echo "The sum of $num1 and $num2 is: $addition"
echo "$num1 - $num2 = $subtraction"
echo "The product of $num1 and $num2 is: $multiplication"
echo "$num1 / $num2 = $division"
```
---

# Takeaways:

Command-Line Argument Handling: The script accepts two numbers as input through command-line arguments, providing flexibility for users to specify values when running the script.

Basic Arithmetic Operations: It performs four core arithmetic operations—addition, subtraction, multiplication, and division—demonstrating fundamental Bash scripting capabilities.

Division by Zero Handling: Includes a safety check to prevent division by zero, ensuring the script does not crash or output incorrect results.

Bash Arithmetic Syntax: Uses `$((...))` for efficient integer arithmetic operations, a core feature of Bash scripting.

Clear Output: Displays the results of each operation with clear, user-friendly output, making it easy to understand the results.

Error Handling for Division: Provides an error message if division by zero is attempted, improving script robustness and user experience.
