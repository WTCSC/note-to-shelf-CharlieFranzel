# Shell Script Note App

### About
This script is a simple not taking tool used for adding notes to a txt file, reading them, and searching them. It includes the time/date of the note as well.

### Usage
The following format should be used for the 3 commands accepted:
Add a note:
./note.sh add "YOUR NOTE HERE"
List all notes:
./note.sh list
Search a note:
./note.sh search "KEYWORD(S)"

### How It Works
First checks for the keywords and continues with the one specified, if something else is put in it returns an error. Next it uses eitehr the echo, cat, or grep function depending on which usage is specified.
