# System Administration

System administration involves managing Linux systems, ensuring their security, performance, and availability. Below are key concepts and commands used in system administration.

## 1. User and Group Management

### Creating and Managing Users
```bash
useradd <username>      # Create a new user
passwd <username>       # Set password for a user
usermod -aG <group> <username>  # Add user to a group
deluser <username>      # Delete a user
```

### Creating and Managing Groups
```bash
groupadd <groupname>    # Create a new group
gpasswd -a <user> <group>  # Add user to a group
groupdel <groupname>    # Delete a group
```

### Viewing User Information
```bash
id <username>      # Show user ID and group
whoami             # Display the current user
who                # Show logged-in users
```

## 2. Process Management
```bash
ps aux          # View running processes
top             # Monitor system resources
htop            # Interactive process manager (install if needed)
kill <PID>      # Terminate a process
pkill <name>    # Kill process by name
nice -n 10 <command>  # Start process with priority
renice -n -5 -p <PID> # Change process priority
```

## 3. Service Management
```bash
systemctl start <service>   # Start a service
systemctl stop <service>    # Stop a service
systemctl restart <service> # Restart a service
systemctl status <service>  # Check service status
systemctl enable <service>  # Enable service at boot
systemctl disable <service> # Disable service at boot
```

## 4. Package Management

### Debian-based Systems (Ubuntu, Debian)
```bash
apt update            # Update package lists
apt install <pkg>     # Install a package
apt remove <pkg>      # Remove a package
apt upgrade           # Upgrade all packages
```

### Red Hat-based Systems (CentOS, RHEL, Fedora)
```bash
yum update           # Update system
yum install <pkg>    # Install a package
yum remove <pkg>     # Remove a package
```

## 5. Disk and Filesystem Management
```bash
df -h               # Show disk usage
du -sh <dir>        # Show directory size
lsblk               # List available disk partitions
mount <device> <dir> # Mount a device
umount <device>      # Unmount a device
```

## 6. Networking
```bash
ip a                # Show IP addresses
ping <host>         # Test network connectivity
netstat -tulnp      # View network connections
ss -tulnp           # Alternative to netstat
curl <url>          # Fetch webpage data
wget <url>          # Download a file
```

## 7. Log Management
```bash
cat /var/log/syslog  # View system logs
journalctl -xe       # View detailed logs
dmesg | tail         # View kernel logs
```

## 8. Time Synchronization

### Chrony (Time Synchronization Management)
Chrony is used to synchronize the system clock with NTP (Network Time Protocol) servers. It is an alternative to `ntpd` and is commonly used in RHEL-based systems.

#### Install Chrony (if not installed)
```bash
yum install chrony -y  # Install Chrony on RHEL-based systems
```

#### Start and Enable Chrony
```bash
systemctl start chronyd     # Start the Chrony service
systemctl enable chronyd    # Enable Chrony on boot
```

#### Check Synchronization Status
```bash
chronyc tracking      # Show system clock synchronization status
chronyc sources       # List NTP servers used for synchronization
```

#### Configure Chrony
Edit the Chrony configuration file:
```bash
vi /etc/chrony.conf
```
Add or modify NTP servers, for example:
```
pool 0.centos.pool.ntp.org iburst
pool 1.centos.pool.ntp.org iburst
```
Save and restart Chrony:
```bash
systemctl restart chronyd
```

#### Force Synchronization
```bash
chronyc makestep  # Force an immediate synchronization
```

## 9. Automation and Scheduling

### Task Scheduling with `at`
```bash
at 14:00        # Schedule a command for 2 PM
atq             # List pending jobs
atrm <job_id>   # Remove a scheduled job
```

### Cron Jobs (Recurring Tasks)
```bash
crontab -e      # Edit crontab
crontab -l      # List scheduled tasks
```
Example crontab entry to run a script every day at midnight:
```bash
0 0 * * * /path/to/script.sh
```

### Shell Scripting
```bash
#!/bin/bash
echo "System Maintenance Running"
date
```
Save as `script.sh`, then run:
```bash
chmod +x script.sh
./script.sh
```

## Conclusion
System administration in Linux involves managing users, processes, services, networking, automation, and time synchronization. Mastering these concepts is essential for maintaining a stable and secure system.

