#!/bin/bash

# This script attempts to process a file, but it contains a subtle error.
# It reads each line, extracts the first word, and adds it to an array.
# However, it fails to handle empty lines correctly, leading to unexpected behavior.

file_to_process="data.txt"

word_array=()  # Initialize an empty array

while IFS= read -r line; do
  first_word=$(echo "$line" | awk '{print $1}')
  #The error is here, if the line is empty first_word is empty, and empty string added to the array
  word_array+=("$first_word")
done < "$file_to_process"

# Process the array (e.g., print its contents)
echo "The words in the file are:"
printf '%s\n' "${word_array[@]}"