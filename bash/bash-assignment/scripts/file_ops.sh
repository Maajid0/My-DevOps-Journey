#!/bin/bash

# Step 1: Create a directory called Maajid (if it doesn't already exist)
echo "Creating directory 'Maajid'..."
if [ ! -d "Maajid" ]; then
    mkdir Maajid
    echo "Directory 'Maajid' created."
else
    echo "Directory 'Maajid' already exists."
fi

# Step 2: Navigate into the Maajid directory
echo "Navigating into the 'Maajid' directory..."
cd Maajid || { echo "Failed to enter the 'Maajid' directory."; exit 1; }

# Step 3: Create a file called maajid.txt and add some text to it
echo "Adding text to maajid.txt..."
echo "DevOps is the best!" > maajid.txt  # This will create the file and add the text

# Step 4: Display the contents of the maajid.txt file
echo "Displaying the contents of maajid.txt..."
cat maajid.txt  # Displays the content of the file
