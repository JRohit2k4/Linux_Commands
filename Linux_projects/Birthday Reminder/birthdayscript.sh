#!/bin/bash

BIRTHDAY_FILE=birthday.txt

#Search for todays birthdays
todays_birthday(){
}

#Search for upcoming birthdays
upcoming_birthdays(){
}

#Add new birthday (YYYY-MM-DD) format
add_birthday(){
}


#Menu loop
while true; do
        echo -e "Birthday Reminder"
        echo "1.Check today's Birthday"
        echo "2.Upcoming Birthdays in 7 days"
        echo "3.Add new Birthday (YYYY-MM-DD)"
        echo "4.Exit"

        read -p "Choose an option" option

        case $option in
                1)todays_birthday ;;
                2)upcoming_birthdays ;;
                3)add_birthday ;;
                4)echo "Exiting..." ; break ;;
                *)echo "Invalid option..!" ;;
        esac
done
