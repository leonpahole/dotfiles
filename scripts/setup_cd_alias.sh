#!/bin/bash

echo "Enter the name for the cd alias:"
read alias_name

# Trim leading and trailing whitespace from the alias name
alias_name=$(echo "$alias_name" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')

# Check if the alias name is empty
if [ -z "$alias_name" ]; then
    echo "Alias name cannot be empty."
    exit 1
fi

# Get the current directory
current_directory=$(pwd)

fish_command="alias -s $alias_name 'cd $current_directory'"

# Run the Fish shell and execute the command
fish -c "$fish_command"

