# Bash Case Statement – Server Simulation

## Overview

This project is a **beginner-to-intermediate Bash scripting practice** focused on understanding and using the `case` statement.

The script simulates basic **server management actions** (start, restart, stop) without relying on real system services like `systemctl`, Docker, or SSH. It is designed purely for **learning and experimentation**.

---

## What This Script Does

When you run the script, it:

1. Displays a menu of options to the user
2. Accepts a single character input (`A`, `B`, or `C`)
3. Uses a `case` statement to decide what action to perform
4. Simulates server operations using messages and delays (`sleep`)

This mimics how real production scripts route commands internally.

---

## Menu Options

| Input           | Action             |
| --------------- | ------------------ |
| A               | Start the server   |
| B               | Restart the server |
| C               | Stop the server    |
| Any other input | Show error message |

---

## Script Flow (Logic Explanation)

1. The script starts execution from a `main()` function
2. The user is prompted to enter a choice
3. Input is read using `read`
4. A `case` statement evaluates the input
5. The matching block is executed
6. The script exits after one operation

No loops are used intentionally to keep the focus on `case` statements.

---

## Key Bash Concepts Used

* `case` statement for decision-making
* `read` for user input
* Quoted variables for safety
* `set -euo pipefail` for strict error handling
* Functions (`main`) for clean structure
* `sleep` to simulate real processing time

---

## How to Run

```bash
chmod +x CaseStatements.sh
./CaseStatements.sh
```
---

## Sample Output

```text
Enter A to start the server
Enter B to re-start the server
Enter C to Stop the server
Enter here -> A
Starting the server ........
Server started
```
---

## Why This Script Is Useful for Learning


* Demonstrates real-world command routing logic
* Builds a strong foundation for:

  * Menu-driven scripts
  * Automation tools
  * CI/CD shell scripts

This script can later be extended using loops (`while`), multiple services, or logging.

---

## Note

This project is intentionally kept simple and dependency-free. It is meant for **learning Bash control flow**, not for managing real services.

