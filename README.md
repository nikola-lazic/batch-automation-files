# **Batch Automation Scripts**
This is my personal collection of Batch (.bat) and .ps1 scripts which I used for task automation as Mechanical Engineer. Feel free to contribute if you have something interesting.
## **Table of Contents**
- [Batch Create folder structure](#batch-create-folder-structure)
- [Batch Delete files in directory](#batch-delete-files-in-directory)
- [Batch Export directory structure to TXT](#batch-export-directory-structure-to-txt)
- [Colors for Batch scripts](#colors-for-batch-scripts)
---
### **Batch Create folder structure**
For every project I had always the same folder structure. User has to define a project
name and folder structure will be created:
```
├───01-Reference
│   ├───Client
│   └───Older_projects
├───02-Doc
├───03-Email
│   ├───In
│   └───Out
├───04-Working
├───05-Analysis
└───06-Final
```
### **Batch Delete files in directory**
This script will delete all files with predefined extension. For the example, if you want to delete filesto delete all .txt files in directory.
For deleting files in subfolders, add /s - Subfolder
#### Example:
```
DEL /s *.bmp
```
### **Batch Export directory structure to TXT**
This script will export all subfolders and list of files into one TXT file, named: generated_tree_list.txt.
#### This was very usefull when I had to deliver project to a client.

#### Example of exported list:
```
+---Data
    |       |   |   chunkmanifest
    |       |   |   initfs_Win32
    |       |   |   layout.toc
    |       |   |   
    |       |   \---Win32
    |       |       |   chunks0.sb
    |       |       |   chunks0.toc
    |       |       |   globals.sb
    |       |       |   globals.toc
    |       |       |   mpvehicles.sb
```
---
---
## **Colors for Batch scripts**
| Background |    Text     |
|------------|-------------|
| 0 = black  | 8 = gray    |
| 1 = navy   | 9 = blue    |
| 2 = green  | A = lime    |
| 3 = teal   | B = cyan    |
| 4 = maroon | C = red     |
| 5 = purple | D = fuchsia |
| 6 = olive  | E = yellow  |
| 7 = silver | F = white   |

#### Example of defining color:
```
:: This will give us black background and lime text.
COLOR 0A
```