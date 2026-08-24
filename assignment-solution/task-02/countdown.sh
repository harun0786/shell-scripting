#!/bin/bash

read -r -p "Enter a starting number: " number

if [[ ! "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: enter a non-negative whole number." >&2
    exit 1
fi

while [ "$number" -ge 0 ]
do
    echo "$number"
    number=$((number - 1))
done

echo "Done!"
