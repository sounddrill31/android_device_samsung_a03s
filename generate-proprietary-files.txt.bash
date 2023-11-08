#!/bin/bash

# Find all files in the vendor directory that are not regular files
find /vendor -type f -o -type d ! -perm 0644 | while read -r file; do
    # Extract the filename and path from the full path
    filename=$(basename $file)
    path=$(dirname $file)

    # Calculate the relative path from the vendor directory
    relative_path=${path#vendor/}

    # Print the relative path and filename to the proprietary-files.txt file
    echo "$relative_path/$filename" >> proprietary-files.txt
done
