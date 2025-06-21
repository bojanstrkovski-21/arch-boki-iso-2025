#!/usr/bin/env bash


# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <file_path> <word_to_search> <replacement_word>"
    exit 1
fi

file_path="$1"
word_to_search="$2"
replacement_word="$3"

# Perform the replacement using sed
sed -i "s/\b$word_to_search\b/$replacement_word/g" "$file_path"

echo "Replacement complete."