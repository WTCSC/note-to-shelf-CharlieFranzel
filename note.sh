#!/bin/bash
time=$(date +"%Y-%m-%d %H:%M:%S")
if [ "$1" = "add" ]; then
    echo "${time} -"$2"" >> notes.txt
    echo Note added successfully
fi