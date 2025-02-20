#! /bin/bash

#File to monitor
FILE_TO_MONITOR="/path/of/file"

#ensure the file exists
if [ ! -f "$FILE_TO_MONITOR" ]; then
        echo "Error: File does not exist!"
        exit 1
fi

#compute initial SHA256 hash
SHA256_INITIAL=$(sha256sum "$FILE_TO_MONITOR" | awk '{print $1}')

echo "Monitoring file: $FILE_TO_MONITOR"
echo "Initial SHA256: $SHA256_INITIAL"
echo "-------------------------------"

#using inotifywait for real-time monitoring
inotifywait -m -e modify "$FILE_TO_MONITOR" | while read; 
do
        SHA256_NEW=$(sha256sum "FILE_TO_MONITOR" | awk '{print $1}')

        if [[ "$SHA256_INITIAL" != "SHA256_NEW" ]]; then
                echo "[ALERT] File has been modified!"
                echo "Previous SHA256: $SHA256_INITIAL"
                echo "NEW SHA256: $SAH256_NEW"
                notify-send "File Integrity Alert" "$FILE_TO_MONITOR has been modified!"
                SHA256_INITIAL=$SHA256_NEW #updates hash after file modification
        fi
done
