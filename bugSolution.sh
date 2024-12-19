#!/bin/bash

# This script demonstrates the solution to the bug.
# It handles empty lines correctly, preventing the addition of empty strings to the array.

file_to_process="data.txt"

word_array=()  # Initialize an empty array

while IFS= read -r line; do
  first_word=$(echo "$line" | awk '{print $1}')
  # Check if the line is not empty
  if [[ -n "$first_word" ]]; then
    word_array+=("$first_word")
  fi
done < "$file_to_process"

# Process the array (e.g., print its contents)
echo "The words in the file are:"
printf '%s\n' "${word_array[@]}"