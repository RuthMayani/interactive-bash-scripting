#!/bin/bash
# Prompt the user for input
read -p "Enter the name of a file or directory: " user_input

2️⃣ Validate input exists
if [ ! -e "$user_input" ]; then
    echo "Error: '$user_input' does not exist."
    exit 1
fi

# Determine type
if [ -f "$user_input" ]; then
    echo "'$user_input' is a regular file."
elif [ -d "$user_input" ]; then
    echo "'$user_input' is a directory."
else
    echo "'$user_input' is another type of file (e.g., link, socket, device)."
fi

# Perform long listing
echo "Directory listing for '$user_input':"
ls -l "$user_input"
