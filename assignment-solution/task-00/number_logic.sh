#!/bin/bash

echo "=============================="
echo "      NUMBER LOGIC TOOL"
echo "=============================="

read -r -p "Enter starting number: " start
read -r -p "Enter ending number: " end

if ! [[ "$start" =~ ^[0-9]+$ && "$end" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter numbers only."
    exit 1
fi

if [[ "$start" -gt "$end" ]]; then
    echo "Error: Start number must be smaller than end number."
    exit 1
fi

count=$start
sum=0

while [[ "$count" -le "$end" ]]
do
    # Even / Odd check
    if (( count % 2 == 0 )); then
        echo "$count = EVEN"
    else
        echo "$count = ODD"
    fi

    # Add number to sum
    sum=$((sum + count))

    # Increase counter
    count=$((count + 1))
done

echo "=============================="
echo "Total Sum = $sum"
echo "=============================="
