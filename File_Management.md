File Management in Linux 📝

📂 1. Creating Files:-
  - touch - Creates an empty file (eg. touch myfile.txt)
  - cat > [filename] - Creates an file and allows to add content (eg. cat > myfile.txt)
  - echo "text" > [filename] - Create a file and insert the text (eg. echo "Hello" > myfile.txt)

📋 2. Viewing File Content:-
  - cat [filename] - Display file content (eg. cat myfile.txt)
  - less [filename] - View content of a large file page by page (eg. less myfile.txt)
  - more [filename] - Similar to less, but only forward navigation (eg. more myfile.txt)
  - head -n X [filename] - Shows first X lines (eg. head -n 5 myfile.txt)
  - tail -n X [filename] - Shows last X lines (eg. tail -n 5 myfile.txt)

✂️ 3. Copying, Moving, and Deleting Files:-
  - cp [filename] [source] [destination] - Copy file (eg. cp /path/of/file/myfile.txt destination/of/path)
  - mv [filename] [destination or newname] - Rename or move file (eg. mv myfile.txt myfile2.txt)
  - rm [filename] - Delete a file (eg. rm myfile.txt)

🔍 4. Searching Files:-
  - find /path -name [filename] - Find file by name (eg. find /home -name "myfile.txt" )
  - locate [filename] - Locate file (eg. locate myfile.txt)
  - grep "text" [filename] - Search for text inside a file (eg. grep "error logs.txt" )
  
