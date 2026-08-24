#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Hello, Harun!"  # Print Harun when no argument is given
    exit 0                # Exit successfully
fi

if [ "$#" -ne 1 ]; then
    echo "Usage: ./greet.sh NAME" >&2  # Show usage error
    exit 2                             # Exit with error status 2
fi

echo "Hello, $1!"  # Print greeting using the first argumenti
