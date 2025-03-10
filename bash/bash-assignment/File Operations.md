# File Operations Script

---

## Script Description

This script demonstrates basic file operations in Bash by creating a directory, navigating into it, creating a file, writing some text to the file, and then displaying the contents of the file.

---

## Script Code

```bash
#!/bin/bash

# Create a directory called Maajid
mkdir Maajid

# Navigate into the Maajid directory
cd Maajid

# Write "DevOps is the best" to a file called maajid.txt
echo "DevOps is the best" > maajid.txt

# Display the contents of maajid.txt
cat maajid.txt
```
---

## Takeaways:

Directory Creation: The `mkdir` command is used to create a new directory called `Maajid`, demonstrating basic directory management in Bash.

Directory Navigation: The `cd` command is used to change the current working directory to `Maajid`, showcasing how to navigate between directories.

File Creation and Writing: The `echo` command writes text to a file called `maajid.txt`, with the `>` operator redirecting the output to the file, effectively creating it and adding content.

File Content Display: The `cat` command is used to display the contents of `maajid.txt`, providing a simple way to view file data.

File Operations: This script provides a practical demonstration of creating, navigating, and manipulating files and directories in Bash.
