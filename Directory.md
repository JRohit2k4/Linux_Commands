# What is a Directory?
 A directory in Linux is a special type of file that acts as a container for other files and subdirectories. It helps in organizing and managing files efficiently in a structured way. A directory can contain files, other directories (subdirectories), or both.
Directories have permissions similar to files, controlling who can access or modify them.

You can create, delete, move, and navigate directories using various Linux commands.

Viewing Directories:-
 ls – List directories and files.

Useful 'ls' Options for Directories:-
 ls -l	   - Long format listing (permissions, owner, size, date).
 ls -a	   - Show hidden files (files starting with .).
 ls -lh	   - Show file sizes in human-readable format (KB, MB, GB).
 ls -lt	   - Sort files by modification time (newest first).
 ls -ltr	 - Sort files by modification time (oldest first).
 ls -R	   - Recursively list directories and their contents.
 ls -d */	 - Show only directories (hides files).
 ls -i	   - Show inode numbers of files and directories.

Creating and Removing Directories:-
 mkdir [dirname]         – Create a directory.
 mkdir -p [path/dirname] – Create parent directories if they don’t exist.
 rmdir [dirname]         – Remove an empty directory.
 rm -r [dirname]         – Remove a directory and its contents.

Navigating Directories:-
 cd [dirname]  – Change directory.
 cd ..         – Move up one directory.
 pwd           – Show the current directory path.

Copying and Moving Directories:-
 cp -r [source] [destination]  – Copy a directory and its contents.
 mv [dirname] [destination]    – Move or rename a directory.
