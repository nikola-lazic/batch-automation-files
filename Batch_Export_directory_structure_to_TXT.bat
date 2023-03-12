@ECHO OFF
COLOR 0A
ECHO -----------------------------------------------------------
ECHO Export directory structure, including files, into TXT file
ECHO -----------------------------------------------------------
tree /f /a > generated_tree_list.txt
ECHO List of folders and files 'generated_tree_list.txt' is created.
PAUSE