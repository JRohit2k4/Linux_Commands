Understanding File Permissions in Linux
In Linux, every file and directory has three types of permissions for three types of users:

#User Categories:
1. Owner (u) - The user who owns the file.
2. Group (g) - Users in the same group as the file owner.
3. Others (o) - Everyone else who has access to the system.

#Permission Types:
Symbol	 Numeric	 Permission	                Description
  r	       4	       Read	     -  View file contents / List directory contents
  w	       2	       Write	   -  Modify file / Create & delete files in a directory
  x	       1	      Execute	   -  Run files as programs / Access directory

#Viewing Permissions:
Tou can see permissions of an file my using 'ls' cmd with options like 'ls -l myfile.txt' it will show like as shown below example
Example Permission Format:
 -rwxr-xr--  1 user group  1234 Jan 01 10:00 myfile.txt

 Breakdown:
 "-"   -  (Regular file, d means directory)
"rwx"  -  Owner has read, write, execute
"r-x"  -  Group has read, execute
"r--"  -  Others have read-only

#Modifying File Permissions:
File permissions can be modified using the chmod command in two ways: symbolic mode and numeric mode.

*Changing Permissions Using Symbolic Mode:
Symbolic mode allows you to modify permissions using letters and operators.

Operators:
"+"  -  Add a permission
"-"  -  Remove a permission
"="  -  Set exact permissions

Examples:
chmod u+x myfile.txt → Gives execute permission to the owner
chmod g-w myfile.txt → Removes write permission from the group
chmod o=r myfile.txt → Sets read-only permission for others

*Changing Permissions Using Numeric Mode:
Numeric mode assigns a three-digit number representing the permissions for owner, group, and others.

Common permission values:
0  -  No permissions (---)
1  -  Execute (--x)
2  -  Write (-w-)
3  -  Write and Execute (-wx)
4  -  Read (r--)
5  -  Read and Execute (r-x)
6  -  Read and Write (rw-)
7  -  Read, Write, and Execute (rwx)

Examples:
chmod 755 myfile.txt  -  Owner has full permissions, group and others have read and execute.
chmod 644 myfile.txt  -  Owner has read and write, group and others have read-only.
chmod 700 myfile.txt  -  Only the owner has full access.
