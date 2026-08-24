#!/bin/bash

# count from 1 to infinity

count=1

while [[ true ]]
do
    echo "$count"
    count=$((count+1))
done
