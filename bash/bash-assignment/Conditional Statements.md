# Conditional Statements Script

---

## Script Description

This script checks if a file exists and provides feedback on whether it does. Additionally, it checks the file's permissions, determining if it is readable, writable, or executable.

---

## Script Code

```bash
#!/bin/bash

# Check if the file Maajid/maajid.txt exists
if [ -f Maajid/maajid.txt ]; then
   echo "File exists!"
else
   echo "File does not exist!"
fi

# Iterate over file permissions (read, write, execute)
for perm in r w x; do
   if [ -$perm Maajid/maajid.txt ]; then
       echo "maajid.txt is $perm-able"
   else   
       echo "maajid.txt is not $perm-able"
   fi
done
```
---

# Takeaways:


File Existence Check: The `if [ -f ... ]` conditional checks if a file exists at the specified location. If it exists, it prints a message confirming the existence; otherwise, it prints a message indicating the file does not exist.

File Permission Checking: A `for` loop is used to iterate over the file permissions (r, w, x) to check if the file has each permission. The loop evaluates each permission and provides output based on whether the file is readable, writable, or executable.

Conditional Statements: The script uses `if` statements for conditional logic to check the file's existence and permissions, demonstrating a fundamental use of conditionals in Bash scripting.

Permission Flags: The `-r`, `-w`, and `-x` options are used within the conditional tests to check for readability, writability, and executability of the file, respectively.

File Permission Feedback: The script provides detailed feedback on the file's state, clearly communicating what permissions the file has or lacks.
