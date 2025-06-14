#!/bin/bash

# This script recursively renames all files with the .md extension
# in the current directory and all subdirectories to have the .html extension.

# Use find to locate all files ending in .md, starting from the current directory (.).
# The -depth option ensures that files in a directory are processed before the directory itself.
# The output is piped to a while loop that reads each found file path.
find . -depth -name "*.md" | while read -r file; do
    # Check if the found path is a regular file.
    if [ -f "$file" ]; then
        # Construct the new filename by replacing the '.md' suffix with '.html'.
        # The `${file%.md}` part removes the '.md' from the end of the filename.
        new_name="${file%.md}.html"

        # Print the action being taken to the console.
        echo "Renaming '$file' to '$new_name'"

        # Use the 'mv' command to perform the actual file renaming.
        # The '--' ensures that filenames starting with a hyphen are not treated as options.
        mv -- "$file" "$new_name"
    fi
done

echo "All .md files have been renamed to .html recursively."
