#!/bin/bash
time=$(date +"%Y-%m-%d %H:%M:%S")
if [ "$1" = "add" ]; then
    echo "${time} - "$2"" >> notes.txt
    echo Note added successfully
fi
if [ "$1" = "list" ]; then
    cat notes.txt
fi
if [ "$1" = "search" ]; then
    grep -- "$2" "notes.txt"
fi
if [ "$1" != "add" ] && [ "$1" != "list" ] && [ "$1" != "search" ]; then
    exit 1
fi