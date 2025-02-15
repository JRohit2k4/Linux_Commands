# Basic Shell Scripting

Shell scripting allows automation of tasks in Linux. Below are fundamental concepts and commands to get started with shell scripting.

## 1. Shebang (`#!/bin/bash`)
Every shell script starts with a **shebang** to specify the shell interpreter.
```bash
#!/bin/bash
```
*This tells the system to use Bash to execute the script.*

## 2. Variables & User Input
### Defining Variables
```bash
name="Rohit"
echo "Hello, $name!"
```
**Output:**
```
Hello, Rohit!
```

### User Input
```bash
read -p "Enter your name: " user_name
echo "Welcome, $user_name!"
```
**Example Run:**
```
Enter your name: Alex
Welcome, Alex!
```

## 3. Conditional Statements
### If-Else
```bash
num=10
if [ $num -gt 5 ]; then
    echo "Number is greater than 5"
else
    echo "Number is less than or equal to 5"
fi
```
**Output:**
```
Number is greater than 5
```

### Case Statement
```bash
echo "Enter a choice: "
read choice
case $choice in
    1) echo "You chose option 1" ;;
    2) echo "You chose option 2" ;;
    *) echo "Invalid choice" ;;
esac
```
**Example Run:**
```
Enter a choice: 2
You chose option 2
```

## 4. Loops
### For Loop
```bash
for i in {1..5}; do
    echo "Iteration $i"
done
```
**Output:**
```
Iteration 1
Iteration 2
Iteration 3
Iteration 4
Iteration 5
```

### While Loop
```bash
counter=1
while [ $counter -le 5 ]; do
    echo "Count: $counter"
    ((counter++))
done
```
**Output:**
```
Count: 1
Count: 2
Count: 3
Count: 4
Count: 5
```

### Until Loop
```bash
num=1
until [ $num -gt 5 ]; do
    echo "Number: $num"
    ((num++))
done
```
**Output:**
```
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
```

## 5. Functions
```bash
function greet() {
    echo "Hello, $1!"
}
greet "Rohit"
```
**Output:**
```
Hello, Rohit!
```


## Conclusion
This covers the basics of shell scripting, including variables, conditionals, loops, functions, and error handling. These concepts form the foundation for more advanced scripting.

