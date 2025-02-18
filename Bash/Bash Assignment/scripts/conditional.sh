#!/bin/bash

#Define file name

file=Maajid/maajid.txt

# Check if the file Maajid/maajid.txt exists
if [ -f $file ]; then
   echo "File exists!"

# Iterate over file permissions (read, write, execute)
for perm in r w x; do
   case $perm in
      r)
         if [ -r Maajid/maajid.txt ]; then
             echo "maajid.txt is readable"
         else
             echo "maajid.txt is not readable"
         fi
         ;;
      w)
         if [ -w Maajid/maajid.txt ]; then
             echo "maajid.txt is writable"
         else
             echo "maajid.txt is not writable"
         fi
         ;;
      x)
         if [ -x Maajid/maajid.txt ]; then
             echo "maajid.txt is executable"
         else
             echo "maajid.txt is not executable"
         fi
         ;;
      esac
   done
else
    echo "The file $file does not exist."
fi