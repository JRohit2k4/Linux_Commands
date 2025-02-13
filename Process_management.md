# Process Management in Linux

In Linux, process management is crucial for controlling system performance and ensuring applications run smoothly. Here’s a detailed guide on managing processes effectively.

## Viewing Processes
To check running processes, use the following commands:

### 1. `ps` - Snapshot of Processes
```bash
ps aux   # Shows detailed information about all running processes
ps -ef   # Displays a similar list with different formatting
```
- `a` → Show processes for all users
- `u` → Display user-oriented output
- `x` → Show processes without a controlling terminal

### 2. `top` - Real-time Process Monitoring
```bash
top
```
- Press `q` to exit
- Press `k` and enter a PID to kill a process
- Press `r` to change process priority

### 3. `htop` - Interactive Process Viewer
```bash
htop
```
(If not installed, install using `sudo apt install htop` or `sudo yum install htop`)

## Managing Processes
### 1. Killing a Process
```bash
kill <PID>     # Kill a process using its PID
kill -9 <PID>  # Forcefully terminate a process
```

### 2. Killing Processes by Name
```bash
pkill process_name   # Kill process by name
killall process_name # Kill all instances of a process
```

## Foreground & Background Jobs
### 1. Running a Process in the Background
```bash
command &   # Run command in background
```

### 2. Viewing Background Jobs
```bash
jobs
```

### 3. Bringing a Background Job to Foreground
```bash
fg %<job_number>
```

### 4. Running a Process in Background Even After Logout
```bash
nohup command &
```

## Process Priorities
### 1. Setting Priority While Running a Process
```bash
nice -n <priority> command
```
(Priority ranges from -20 (highest) to 19 (lowest))

### 2. Changing Priority of a Running Process
```bash
renice -n <priority> -p <PID>
```

---
This guide helps you efficiently manage processes in Linux, ensuring better control over system performance. 🚀

