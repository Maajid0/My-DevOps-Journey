# Backup Script

---

## Script Description

This script prompts the user to input the source and backup directory paths. It checks if the source directory exists, and if so, it creates the backup directory (if necessary) and copies all .txt files from the source to the backup directory.

---

## Script Code

```bash
#!/bin/bash

# Prompt user for the source directory
echo "Enter the source directory:"
read source

# Prompt user for the backup directory
echo "Enter the backup directory:"
read backup

# Check if the source directory exists
if [ ! -d "$source" ]; then
    echo "Source directory $source does not exist."
    exit 1
fi

# Create the backup directory if it doesn't exist
mkdir -p "$backup"

# Copy all .txt files from the source to the backup directory
cp -b "$source"/*.txt "$backup/"

echo "Backup completed successfully."
```

---

## Takeaways:

User Input: The script prompts the user to input the source and backup directory paths, making it more flexible to use in different environments.

Source Directory Check: Before performing the backup, the script checks if the source directory exists. If it doesn’t, the script exits and notifies the user.

Backup Directory Creation: The `mkdir -p` command ensures the backup directory is created if it doesn't already exist.

File Copying: The script uses the `cp -b` command to copy .txt files from the source to the backup directory, preventing overwriting of existing files.

Simple and User-Friendly: This script is designed to be straightforward and easy to use, with clear prompts and error handling.
