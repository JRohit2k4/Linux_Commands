#!/bin/bash

list_process(){
        ps aux
}

search_process(){
        read -p "Enter process name: " pname
        ps aux | grep $pname
}

kill_process(){
        read -p "Enter process ID to kill it: " pid
        kill -9 $pid
}

monitor_usage(){
        top -df
}

while true; do
        echo "/n Process Manager"
        echo "1. List processes"
        echo "2. Searcha a process"
        echo "3. Kill a process"
        echo "4. Monitor usage"
        echo "5. Exit"
        
        read -p "Choose an option: " option

        case $option in
                1)list_process ;;
                2)search_process ;;
                3)kill_process ;;
                4)monitor_usage ;;
                5)echo "Exiting..."; break ;;
                *)echo "Invalid option" ;;
        esac
done
