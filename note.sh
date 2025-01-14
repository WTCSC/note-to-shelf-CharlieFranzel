#!/bin/bash
time=$(date +"%Y-%m-%d %H:%M:%S") # Sets the time and date format correctly
if [ "$1" = "add" ]; then # If the first argument calls for it to be "add"
    echo "${time} - "$2"" >> notes.txt # Adds the second argument to the notes
    echo Note added successfully # Lets user know it was added successfully
fi
if [ "$1" = "list" ]; then # If the first argument is "list"
    cat notes.txt # Prints out the notes file
fi
if [ "$1" = "search" ]; then # If the first argument is "search"
    grep -- "$2" "notes.txt" # Searches for the second argument within notes and prints out the matches
fi
if [ "$1" != "add" ] && [ "$1" != "list" ] && [ "$1" != "search" ]; then # If the first argument is not one of the 3 functions it returns exit code 1 indicating an error
    exit 1
fi