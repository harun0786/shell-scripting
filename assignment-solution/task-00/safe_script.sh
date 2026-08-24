#!/bin/bash

set -e  # Enable exit-on-error behavior

work_directory="/tmp/devops-test"  # Store the working directory
file_path="$work_directory/practice.txt"  # Store the file path

mkdir -p -- "$work_directory" || {  # Create the directory
    echo "Error: could not create $work_directory." >&2
    exit 1
}

cd -- "$work_directory" || {  # Navigate into the directory
    echo "Error: could not enter $work_directory." >&2
    exit 1
}

echo "Directory ready: $work_directory"  # Confirm directory is ready

touch -- "$file_path" || {  # Create practice.txt
    echo "Error: could not create $file_path." >&2
    exit 1
}

echo "DevOps practice" > "$file_path" || {  # Write content into the file
    echo "Error: could not write to $file_path." >&2
    exit 1
}

if [[ -f "$file_path" ]]; then  # Check if the file is a regular file
    echo "File created: $file_path"  # Confirm file creation
else
    echo "Error: $file_path is not a regular file." >&2
    exit 1
fi

echo "Task completed successfully."  # Print final success message
