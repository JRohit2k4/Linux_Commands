### Firewall Basics

#### What is a Firewall?
A firewall is a network security system that monitors and controls incoming and outgoing network traffic based on predetermined security rules. It acts as a barrier between a trusted network and an untrusted network, such as the internet.

#### Types of Firewalls
1. **Packet Filtering Firewall** - Examines packets and allows or blocks them based on rules.
2. **Stateful Inspection Firewall** - Monitors active connections and makes decisions based on state and context.
3. **Proxy Firewall** - Intermediates communication between the user and the service.
4. **Next-Generation Firewall (NGFW)** - Includes features like deep packet inspection, intrusion prevention, and application awareness.

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

#### Understanding Firewall Chains and Policies
Firewalls use chains to process rules. The three main chains in `iptables` are:
- **INPUT** - Handles packets destined for the local system.
- **FORWARD** - Manages packets routed through the system (acting as a gateway).
- **OUTPUT** - Manages packets leaving the local system.

Each chain follows a default policy, which can be one of the following:
- **ACCEPT** - Allows packets to pass through.
- **DROP** - Silently discards packets.
- **REJECT** - Blocks packets and notifies the sender.

**Example Policies:**
- `sudo iptables -P INPUT DROP` → Sets the default policy for the INPUT chain to DROP.
- `sudo iptables -P FORWARD ACCEPT` → Allows forwarded traffic.

#### Syntax of Firewall Commands
1. **UFW (Uncomplicated Firewall)**
   - Syntax: `sudo ufw [action] [rule]`
   - Example: `sudo ufw allow 22/tcp`
   - Example: `sudo ufw deny 80`
   - **Options:**
     - `enable` - Enables UFW
     - `disable` - Disables UFW
     - `allow [port/protocol]` - Allows traffic on a specific port or protocol
     - `deny [port/protocol]` - Blocks traffic on a specific port or protocol
     - `status` - Displays the current firewall rules

2. **iptables**
   - Syntax: `sudo iptables -A [chain] -p [protocol] --dport [port] -j [action]`
   - Example: `sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT`
   - Example: `sudo iptables -A INPUT -s 192.168.1.100 -j DROP`
   - **Options:**
     - `-A` - Append rule to a chain
     - `-D` - Delete a rule
     - `-I` - Insert a rule at a specific position
     - `-L` - List all rules
     - `-F` - Flush all rules
     - `-p` - Specify protocol (tcp, udp, icmp)
     - `--dport` - Destination port
     - `--sport` - Source port
     - `-j` - Specify action (ACCEPT, DROP, REJECT)

3. **firewalld**
   - Syntax: `sudo firewall-cmd --[option] --[parameter]`
   - Example: `sudo firewall-cmd --add-service=http --permanent`
   - Example: `sudo firewall-cmd --reload`
   - **Options:**
     - `--add-service=[service]` - Allows a specific service (e.g., http, ssh)
     - `--remove-service=[service]` - Removes a specific service
     - `--add-port=[port]/[protocol]` - Allows traffic on a specific port and protocol
     - `--remove-port=[port]/[protocol]` - Blocks traffic on a specific port and protocol
     - `--list-all` - Lists all active rules
     - `--reload` - Reloads firewall rules

#### Best Practices
- Always allow only necessary ports and block everything else by default.
- Regularly review firewall rules.
- Use logging to monitor traffic and detect anomalies.
- Combine firewall rules with other security measures, such as intrusion detection systems (IDS).

This document provides a fundamental understanding of firewalls, their syntax, options, chains, policies, and basic usage in Linux environments.


