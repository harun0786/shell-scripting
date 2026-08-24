#!/bin/bash

echo "Script name: $0"              # Print the script name
echo "Argument count: $#"           # Print total number of arguments
echo "All arguments: $@"             # Print all arguments

count=1                             # Start argument numbering from 1

for arg in "$@"; do                 # Loop through each argument separately
    echo "Argument $count: $arg"    # Print argument number and value
    count=$((count + 1))            # Increase the argument number
done
