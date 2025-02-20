### Firewall Basics

#### What is a Firewall?
A firewall is a network security system that monitors and controls incoming and outgoing network traffic based on predetermined security rules. It acts as a barrier between a trusted network and an untrusted network, such as the internet.

#### Types of Firewalls
1. **Packet Filtering Firewall** - Examines packets and allows or blocks them based on rules.
2. **Stateful Inspection Firewall** - Monitors active connections and makes decisions based on state and context.
3. **Proxy Firewall** - Intermediates communication between the user and the service.

#### Firewall Rules
Firewall rules define what traffic is allowed or blocked. Rules are generally based on:
- **Source IP address**
- **Destination IP address**
- **Protocol (TCP, UDP, ICMP, etc.)**
- **Port number**
- **Action (ALLOW/DENY)**

#### Services for Firewall
1. Start firewall service: `sudo systemctl start firewalld`
2. Stop firewall service: `sudo systemctl stop firewalld`
3. Enable firewall service: `sudo systemctl enable firewalld`
4. Disable firewall service: `sudo systemctl disable firewalld`

#### Syntax of Firewall Commands
1. **iptables**
   - Syntax: `sudo iptables -A [chain] -p [protocol] --dport [port] -j [action]`
   - Example: `sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT`
   - Example: `sudo iptables -A INPUT -s 192.168.1.100 -j DROP`

2. **firewalld**
   - Syntax: `sudo firewall-cmd --[option] --[parameter]`
   - Example: `sudo firewall-cmd --add-service=http --permanent`
   - Example: `sudo firewall-cmd --reload`

#### Best Practices
- Always allow only necessary ports and block everything else by default.
- Regularly review firewall rules.
- Use logging to monitor traffic and detect anomalies.
- Combine firewall rules with other security measures, such as intrusion detection systems (IDS).

This document provides a fundamental understanding of firewalls, their syntax, and basic usage in Linux environments.

