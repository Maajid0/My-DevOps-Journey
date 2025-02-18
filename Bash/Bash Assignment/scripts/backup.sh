#!/bin/bash

# Prompt user for the source directory
echo "Enter the source directory:"
read source

# Prompt user for the backup directory
echo "Enter the backup directory:"
read backup

# Check if the source directory exists
if [ -z "$source" ] || [ ! -d "$source" ]; then
    echo "Source directory $source is invalid or does not exist."
    exit 1
fi

# Check if the backup directory exists

if [ -z "$backup" ] || [ ! -d "$backup" ];then 
    echo "Backup directory $backup does not exist."
    exit 1 
fi

# Create the backup directory if it doesn't exist
mkdir -p "$backup"

# Define variable txt and finds txt files in source directory

txt=$(find "$source" -type f -name "*.txt")

# Checks if there are any .txt from the source directory

if [ -z "$txt" ]; then 
    echo "There are no .txt files found in the source directory"
    exit 0
fi

# Copy all .txt files from the source to the backup directory
cp -b "$source"/*.txt "$backup/"

echo "Backup of files from '$source' to '$backup' completed successfully."

exit 0