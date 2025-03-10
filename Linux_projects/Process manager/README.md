# Process Manager

## 📌 Overview
The **Process Manager** is a Bash script that helps users monitor, search, and manage running processes on a Linux system. It provides an interactive menu to list, search, and terminate processes easily.

## 🚀 Features
- **List Running Processes** – Displays all active processes.
- **Search a Process** – Find a specific process by name.
- **Kill a Process** – Terminate a process by entering its PID.
- **Monitor CPU & Memory Usage** – Open the `top` command for real-time resource tracking.

## 🛠️ Prerequisites
- A Linux system with Bash shell.
- Basic knowledge of process management commands (`ps`, `grep`, `kill`, `top`).


## Make the script executable: ##
   ```bash
   chmod +x process_manager.sh
   ```

## 🔧 Usage
Run the script using:
```bash
./process_manager.sh
```
Select an option from the interactive menu:
1. **List Processes** – Displays all running processes.
2. **Search Process** – Prompts for a process name and searches for it.
3. **Kill Process** – Prompts for a PID to terminate the process.
4. **Monitor Usage** – Opens `top` for real-time monitoring.
5. **Exit** – Exits the script.

## 📝 Example Output
```
Process Manager
1. List Processes
2. Search Process
3. Kill Process
4. Monitor Usage
5. Exit
Choose an option: 2
Enter process name: firefox
```

## 🛡️ Notes
- Use `kill -9 PID` cautiously as it forcefully terminates processes.
- Searching for a process filters results using `grep` to avoid listing the grep command itself.
- Ensure you have the necessary permissions to terminate certain processes.

## 📌 Future Enhancements
- Add logging for killed processes.
- Add a watchdog feature to restart critical processes if they stop.

💡 Feel free to modify and improve the script as needed! 🚀


