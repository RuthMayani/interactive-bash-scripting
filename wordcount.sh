#!/bin/bash

FILE="$1"

if [ -z "$FILE" ]; then
    echo "Usage: $0 <wordcount.sh>"
    exit 1
fi

if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' does not exist."
    exit 1
fi

WORD_COUNT=$(cat "$FILE" | grep -oE '\b[[:alnum:]]+\b' | wc -l)

echo "Total words: $WORD_COUNT"
