# Linux Fundamentals

Linux is an open-source, Unix-like operating system that provides a powerful environment for users and developers. Understanding its core concepts is essential for system administration and development.

## 1. Linux Basics

### What is Linux?
- Linux is an open-source OS based on Unix.
- It consists of the **kernel**, **shell**, and **utilities**.
- It supports multitasking, multi-user capabilities, and security features.

### Linux Distributions
Popular Linux distributions include:
- **Ubuntu** (Beginner-friendly)
- **Debian** (Stable and widely used)
- **Fedora** (Cutting-edge features)
- **CentOS/RHEL** (Enterprise-level)
- **Arch Linux** (Minimal and customizable)

## 2. File System Structure

Linux follows the **Filesystem Hierarchy Standard (FHS)**:
- `/` (Root Directory) – Base of the Linux filesystem
- `/bin` – Essential binaries (commands like `ls`, `cat`)
- `/etc` – Configuration files
- `/home` – User home directories
- `/var` – Variable data like logs
- `/tmp` – Temporary files
- `/mnt` – Mounted drives
- `/dev` – Device files (e.g., `sda1` for hard drives)
- `/proc` – System and process information

## 3. Basic Linux Commands

### Navigation and File Management
```bash
pwd           # Show current directory
ls            # List files and directories
cd <dir>      # Change directory
mkdir <dir>   # Create a new directory
touch <file>  # Create an empty file
rm <file>     # Delete a file
rmdir <dir>   # Remove empty directory
cp <src> <dst>  # Copy files/directories
mv <src> <dst>  # Move or rename files
```

### Viewing and Editing Files
```bash
cat <file>    # View file contents
less <file>   # View file with navigation
head <file>   # View first 10 lines
tail <file>   # View last 10 lines
nano <file>   # Edit file with Nano
vi <file>     # Edit file with Vim
```

## 4. User and Permission Management

### User Commands
```bash
whoami        # Show current user
id            # Display user ID and groups
who           # List logged-in users
adduser <user>  # Create a new user
passwd <user>   # Change user password
deluser <user>  # Remove a user
```

### File Permissions
Each file has **owner**, **group**, and **others** permissions:
```bash
ls -l         # Show file permissions
chmod 755 <file>  # Change file permissions
chown user:group <file>  # Change ownership
```
Permission types:
- `r` (read), `w` (write), `x` (execute)
- Numeric mode: `755` (`rwxr-xr-x`), `644` (`rw-r--r--`)

## 5. Process Management
```bash
ps aux        # View running processes
top           # Monitor system resources
kill <PID>    # Terminate a process
pkill <name>  # Kill process by name
bg            # Resume a background process
fg            # Bring background process to foreground
```

## 6. Package Management

### Debian-based Systems (Ubuntu, Debian)
```bash
apt update      # Update package lists
apt install <pkg>  # Install a package
apt remove <pkg>   # Remove a package
apt upgrade       # Upgrade all packages
```

### Red Hat-based Systems (CentOS, Fedora)
```bash
yum update        # Update system
yum install <pkg> # Install a package
yum remove <pkg>  # Remove a package
```

## 7. Networking Commands
```bash
ip a          # Show IP address
ping <host>   # Check connectivity
netstat -tulnp  # View active network connections
ss -tulnp     # Alternative to netstat
curl <url>    # Fetch webpage data
wget <url>    # Download a file
```

## 8. Disk Management
```bash
df -h         # Show disk usage
du -sh <dir>  # Show directory size
mount <device> <dir>  # Mount a device
umount <device>  # Unmount a device
```

## 9. Log Management
```bash
cat /var/log/syslog  # View system logs
journalctl -xe       # View detailed logs
dmesg | tail         # View kernel logs
```

## 10. Scripting and Automation
Linux supports shell scripting for automation.

### Basic Script Example
```bash
#!/bin/bash
echo "Hello, Linux!"
date
```
Save the script as `script.sh`, then run:
```bash
chmod +x script.sh
./script.sh
```

## Conclusion
Understanding these Linux fundamentals is crucial for beginners to get comfortable with system administration, troubleshooting, and everyday operations.

