#!/bin/bash

# Check if the alias name is provided as a command-line argument
if [ -z "$1" ]; then
    echo "Alias name is missing."
    echo "Usage: $0 <alias_name>"
    exit 1
fi

# Trim leading and trailing whitespace from the alias name
alias_name=$(echo "$1" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')

# Check if the alias name is empty
if [ -z "$alias_name" ]; then
    echo "Alias name cannot be empty."
    exit 1
fi

# Get the current directory
current_directory=$(pwd)

fish_command="alias -s ws$alias_name 'cd $current_directory'"

# Run the Fish shell and execute the command
fish -c "$fish_command"

