# Bash User Input   

This document provides a **clear explanation of the `UserInput.sh` script**, explaining how Bash handles **interactive user input** using the `read` command.
All explanations map **directly to the code present in `UserInput.sh`**.

---

## Shebang Line 

```bash
#!/usr/bin/env bash
```

* Ensures the script runs using the system’s default Bash interpreter
* Improves portability across different Linux environments

---

## Enabling Safe Bash Mode 

```bash
set -euo pipefail
```

Purpose of each option:

| Option     | Description                                |
| ---------- | ------------------------------------------ |
| `-e`       | Exit immediately if a command fails        |
| `-u`       | Treat usage of unset variables as an error |
| `pipefail` | Fail a pipeline if any command in it fails |

This enforces **strict error handling**, preventing silent failures.

---

## `main()` Function Definition 

```bash
main() {
    ...
}
```

Why use a `main()` function:

* Prevents accidental execution when sourcing the script
* Improves structure and readability
* Makes argument handling predictable
* Considered best practice for Bash scripting

---

## Reading User Input – Name 

```bash
read -p "Enter your name: " name
```

Explanation:

* `read` is a Bash built-in command used to take input from the user
* `-p` displays a prompt before reading input
* The entered value is stored in the variable `name`

Important notes:

* Input is read from **standard input (stdin)**
* No type checking is performed (everything is treated as a string)

---

## Reading User Input – Age 

```bash
read -p "Enter your age: " age
```

Explanation:

* Same `read` command is reused
* User input is stored in the variable `age`
* Bash does **not enforce numeric types**, even for age

---

## Printing User Input 

```bash
echo "Your name is $name and age is $age"
```

Key points:

* Variables are expanded inside double quotes
* Output combines static text and user-provided input
* Quoting prevents word splitting issues

---

## Calling `main()` Safely 

```bash
main "$@"
```

Why `"$@"` is used:

* Preserves argument boundaries
* Prevents word splitting
* Standard and safe way to pass arguments to functions

---

## Summary 

The `UserInput.sh` script demonstrates:

* Interactive input handling using `read`
* Prompting users with `-p`
* Storing user input in variables
* Printing user-provided data
* Writing structured and safe Bash scripts

