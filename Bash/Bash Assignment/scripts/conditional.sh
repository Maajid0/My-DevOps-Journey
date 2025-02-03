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
