#!/bin/bash
#
# stream_demo.sh
# Demonstrates the difference between standard output (stdout)
# and standard error (stderr) streams.
#
# Usage: ./stream_demo.sh <directory_path>

# ---- 1. Two normal informational messages -> stdout ----
echo "INFO: Starting stream_demo.sh script."
echo "INFO: This script demonstrates stdout and stderr separation."

# ---- 2. Two error messages -> stderr ----
echo "ERROR: This is a sample error message #1 (stderr)." >&2
echo "ERROR: This is a sample error message #2 (stderr)." >&2

# ---- 3. Accept a directory path from the first positional argument ----
DIR_PATH="$1"

if [ -z "$DIR_PATH" ]; then
    echo "ERROR: No directory path provided. Usage: $0 <directory_path>" >&2
    exit 1
fi

# ---- 4 & 5. Check if directory exists ----
if [ -d "$DIR_PATH" ]; then
    echo "INFO: Directory '$DIR_PATH' exists. Listing contents below:"
    ls -l "$DIR_PATH"
    # ---- 6. Success exit status ----
    exit 0
else
    echo "ERROR: Directory '$DIR_PATH' does not exist." >&2
    # ---- 6. Failure exit status ----
    exit 1
fi



 task 5
 Successful command:
ls /tmp

Exit status:
0

Meaning:
Command executed successfully.

---------------------------------

Failing command:
cd /missing

Exit status:
1

Meaning:
Command failed because the directory does not exist.
