#!/bin/bash

file_path="$1"
word_count=0

checkArgument() {
    if [ -z "$file_path" ]; then
        echo "Error: Missing file argument."
        exit 1
    fi
}

checkFileExists() {
    if [ ! -f "$file_path" ]; then
        echo "Error: File does not exist."
        exit 1
    fi
}

checkFileReadable() {
    if [ ! -r "$file_path" ]; then
        echo "Error: File is not readable."
        exit 1
    fi
}

checkFileNotEmpty() {
    if [ ! -s "$file_path" ]; then
        echo "Error: File is empty."
        exit 1
    fi
}

countWords() {
    word_count=$(cat "$file_path" | grep -oE '\w+' | wc -w)
}

displayCount() {
    echo "Total words: $word_count"
}

checkArgument
checkFileExists
checkFileReadable
checkFileNotEmpty
countWords
displayCount

exit 0
