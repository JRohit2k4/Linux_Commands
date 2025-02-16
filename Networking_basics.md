# Linux Networking

Networking is a crucial aspect of Linux system administration. This guide covers essential networking concepts, commands, and troubleshooting techniques.

## 1. Checking Network Configuration

### Display IP Address
```bash
ip a  # Shows all network interfaces and their IP addresses
```
**Example Output:**
```
2: eth0: <UP,BROADCAST,RUNNING,MULTICAST> mtu 1500
    inet 192.168.1.100/24 brd 192.168.1.255 scope global eth0
```

### Display Network Interfaces
```bash
ip link show  # Lists available network interfaces
```

## 2. Managing Network Connections

### Assign IP Address
```bash
ip addr add 192.168.1.101/24 dev eth0
```

### Bring Interface Up/Down
```bash
ip link set eth0 up   # Enable interface
ip link set eth0 down # Disable interface
```

## 3. DNS Configuration

### Check DNS Resolution
```bash
dig google.com  # Query DNS records
nslookup google.com  # Resolve domain names
```

## 4. Connectivity Testing

### Check Network Reachability
```bash
ping -c 4 8.8.8.8  # Send 4 ICMP echo requests
```

### Trace Route to a Destination
```bash
traceroute google.com
```

## 5. Checking Open Ports & Services

### List Open Ports
```bash
netstat -tulnp  # Display open ports and associated processes
ss -tulnp       # Alternative to netstat
```

## 6. Configuring Firewall (firewalld)

### Check Firewall Status
```bash
systemctl status firewalld
```

### Allow a Service
```bash
firewall-cmd --add-service=http --permanent
firewall-cmd --reload  # Apply changes
```

## 7. Network Troubleshooting

### Check Routing Table
```bash
ip route show  # Display routing table
```

### Verify Network Connectivity
```bash
nc -zv google.com 80  # Check if a port is open on a remote server
```

## Conclusion
Understanding Linux networking commands and tools is essential for managing and troubleshooting network issues efficiently.

