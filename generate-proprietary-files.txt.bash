#!/bin/bash

# Recursively find all files and directories in the vendor directory that are not regular files
find /vendor -type f -o -type d ! -perm 0644 | while read -r file; do
    # Extract the filename and path from the full path
    filename=$(basename $file)
    path=$(dirname $file)

    # Calculate the relative path from the vendor directory
    relative_path=${path#$vendor_dir/}

    # Generate SHA-1 hash for the file
    sha1sum=$(sha1sum "$file" | awk '{print $1}')

    # Print the relative path, filename, and SHA-1 hash
    echo "$relative_path/$filename|$sha1sum" >> proprietary-files.txt
done
