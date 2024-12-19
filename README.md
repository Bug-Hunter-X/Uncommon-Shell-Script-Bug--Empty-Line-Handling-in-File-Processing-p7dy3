# Shell Script Bug: Empty Line Handling

This repository demonstrates a subtle bug in a shell script that processes a file line by line.  The script extracts the first word from each line and stores it in an array. The problem arises when the script encounters empty lines in the input file. The script doesn't correctly handle these empty lines, resulting in additional empty elements in the resulting array.

## Bug Description

The script uses a `while` loop with `read` to process the file.  However, when an empty line is encountered, the `awk` command still produces an empty string, which is then added to the array. This leads to unexpected results when the array is processed further. 

## Solution

The solution involves adding a check to prevent adding empty strings to the array. The updated script checks if the `first_word` variable is empty before appending it to the array.

## How to Reproduce

1. Clone this repository.
2. Create a file named `data.txt` with some text, including at least one empty line.
3. Run `bug.sh`. Observe the unexpected output.
4. Run `bugSolution.sh`. Observe the correct output.