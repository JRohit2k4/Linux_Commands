#!/bin/bash

#function to add user
add_user(){
echo -n "enter user name: "
read username
sudo useradd $username
echo "Enter password: "
echo "user $username added"
}

#function to delete user
delete_user(){
echo -n "who is that: "
read username
sudo userdel -r $username
echo "bye $username"
}

#function to list all users
list_users(){
echo "Listing all users..."
cat /etc/passwd | cut -d: -f1
}

#function to modify user details (change passwd)
modify_user(){
echo -n "Enter username: "
read username
sudo passwd $username
echo "Password changed for $username"
}

#main menu
while true; do
echo "User Management System"
echo "1. Add User"
echo "2. Delete User"
echo "3. List all users"
echo "4. Modify user detail"
echo "5. Exit"

        read -p "Enter your choice: " choice
        case $choice in
                1) add_user ;;
                2) delete_user ;;
                3) list_users ;;
                4) modify_user ;;
                5) echo "Exiting..."; exit ;;
                *) echo "Invalid choice..!" ;;
        esac
done
