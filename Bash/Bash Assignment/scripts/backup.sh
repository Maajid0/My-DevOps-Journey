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
