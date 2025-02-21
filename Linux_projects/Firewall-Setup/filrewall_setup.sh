#!/bin/bash

#Function to allow IP address
allow_ip(){
    read -p "Enter IP address to allow: " ip
    iptables -A INPUT -s "$ip" -j ACCEPT
    echo "IP $ip allowed"
}

#Function to block an IP address
block_ip(){
    read -p "Enter IP address to block: " ip
    iptables -A INPUT -s "$ip" -j DROP
    echo "IP $ip blocked"
}

#Function to allow traffic from port
allow_port(){
    read -p "Enter port to allow: " port
    iptables -A INPUT -p tcp --dport "$port" -j ACCEPT
    echo "Traffic from port $port is allowed"
}

#Function to block traffic from port
block_port(){
read -p "Enter port to block: " port
iptables -A INPUT -p tcp --dport "$port" -j DROP
echo "Traffic from port $port is blocked"
}

#Function to view current rules
view_rules(){
    echo "Current firewall rules: "
    iptables -L --line-numbers | more
}

#Functions to reset firewall rules
reset_rules(){
    echo "Reseting firewall rules..."
    echo ".........................."
    iptables -F
    iptables -P INPUT DROP
    iptables -P FORWARD DROP
    iptables -P OUTPUT ACCEPT
    iptables -A INPUT -i lo -j ACCEPT
    iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
    echo "Firewall rules have been reset"
}

#Menu loop
while true; do
        echo -e "\n Choose an operation: "
        echo "1. Allow an IP"
        echo "2. Block an IP"
        echo "3. Allow port"
        echo "4. Block port"
        echo "5. List firewall rules"
        echo "6. Reset firewall rules"
        echo "7. Exit"
        
        read -p "Enter choice: " choice
        
        case $choice in
                1)allow_ip ;;
                2)block_ip ;;
                3)allow_port ;;
                4)block_port ;;
                5)view_rules ;;
                6)reset_rules ;;
                7)echo "Exiting.."; break ;;
                *)echo "Invalid choice.." ;;
        esac
done
