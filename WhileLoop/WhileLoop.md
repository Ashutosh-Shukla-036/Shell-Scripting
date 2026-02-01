# Bash While Loop

This document explains the **while loop concepts in Bash**, mapped **line-by-line** to the script implementation. These notes are written to be **GitHub-ready** and suitable for revision or interviews.

---

## Shebang Line 

```bash
#!/usr/bin/env bash
```

* Uses the system’s default Bash interpreter
* Ensures portability across Linux environments
* Recommended over hardcoding `/bin/bash`

---

## Enabling Strict Bash Mode 

```bash
set -euo pipefail
```

Purpose:

| Option     | Meaning                                    |
| ---------- | ------------------------------------------ |
| `-e`       | Exit immediately if a command fails        |
| `-u`       | Treat usage of unset variables as an error |
| `pipefail` | Fail a pipeline if any command fails       |

This prevents silent failures and enforces **safe scripting discipline**.

---

## main() Function Structure 

```bash
main() {
    ...
}
```

Why this is best practice:

* Prevents accidental execution when sourcing the script
* Improves readability and structure
* Makes scripts scalable and testable

---

## Basic While Loop 

```bash
echo "========= While loop =========="
count=1
while [ $count -lt 6 ]; do
    echo "Count is: $count"
    ((count++))
done
```

Explanation:

* `count=1` initializes the loop variable
* `[ $count -lt 6 ]` is the loop condition
* Loop runs **while condition is true**
* `((count++))` increments the counter using arithmetic expansion

Output:

```
Count is: 1
Count is: 2
Count is: 3
Count is: 4
Count is: 5
```

---

## Infinite While Loop 

```bash
echo "========= Infinite while loop ============"
while true; do
    ...
done
```

Key idea:

* `true` always evaluates to true
* Loop runs indefinitely
* Must be stopped using `break`

Used in:

* User-driven programs
* Menu systems
* Daemons and watchers

---

## Reading User Input Inside Loop 

```bash
read -p "Enter number 0 to break: " number
```

* `read` takes input from standard input
* `-p` displays prompt inline
* Input stored in variable `number`

---

## Input Validation Using Regex 

```bash
[[ "$number" =~ ^[0-9]+$ ]] || {
    echo "Please enter a valid number"
    continue
}
```

Explanation:

* `[[ ... =~ ... ]]` performs regex matching
* `^[0-9]+$` ensures input contains only digits
* `||` executes the block if validation fails
* `continue` skips current iteration and restarts loop

This prevents invalid input from crashing the script.

---

## Breaking the Infinite Loop 

```bash
(( number == 0 )) && break
```

Explanation:

* Arithmetic comparison inside `(( ))`
* If number equals `0`, loop terminates
* `break` exits the loop immediately

---

## Printing Valid Input 

```bash
echo "Number you entered: $number"
```

* Prints validated numeric input
* Runs only when input is valid and non-zero

---

## Key Takeaways 

* `while` loops run as long as condition is true
* Infinite loops must always have an exit condition
* Always validate user input in loops
* Prefer `(( ))` for numeric comparisons
* Use `continue` and `break` for flow control
* Wrap logic inside `main()` and call with `"$@"`

---

**This concludes Bash While Loops** 

Next recommended topics:

* `until` loops
* `select` menus
* Real-world loop automation examples
* Script-based menu systems

