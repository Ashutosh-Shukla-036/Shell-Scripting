# Bash Arithmetic Operations 

This document explains the **`ArithmeticOperation.sh` script line by line**, focusing on how Bash performs **arithmetic operations** using built-in mechanisms.
All explanations map **directly to the code present in `ArithmeticOperation.sh`**.

---

## Shebang Line 

```bash
#!/usr/bin/env bash
```

* Ensures the script is executed using the user’s default Bash interpreter
* Improves portability across Linux environments

---

## Enabling Safe Bash Mode 

```bash
set -euo pipefail
```

Purpose of each option:

| Option     | Description                                |
| ---------- | ------------------------------------------ |
| `-e`       | Exit immediately if any command fails      |
| `-u`       | Treat unset variables as an error          |
| `pipefail` | Fail a pipeline if any command in it fails |

This prevents silent errors and enforces strict script behavior.

---

## `main()` Function Definition 

```bash
main() {
    ...
}
```

Why `main()` is used:

* Prevents accidental execution when the script is sourced
* Improves readability and structure
* Makes argument handling consistent
* Considered best practice in Bash scripting

---

## Reading Numeric Input from User 

```bash
read -p "Enter number: " num_one
read -p "Enter number: " num_two
```

Explanation:

* `read` takes input from the user via standard input (stdin)
* `-p` displays a prompt before reading input
* Inputs are stored in variables `num_one` and `num_two`

Important notes:

* Bash does **not enforce numeric types**
* User input is always treated as a string until used in arithmetic context

---

## Arithmetic Operation Using `let` 

```bash
let num_three=$num_one*$num_two
```

Explanation:

* `let` is a Bash built-in for arithmetic evaluation
* Variables do **not** need `$` inside arithmetic expressions
* Result of the multiplication is stored in `num_three`

Equivalent form:

```bash
let num_three=num_one*num_two
```

---

## Printing the Result 

```bash
echo "Result is ${num_three}"
```

Key points:

* Variable expansion occurs inside double quotes
* Curly braces improve clarity and avoid ambiguity

---

## Arithmetic Operation Using `(( ))` 

```bash
num_four=$(($num_one+$num_two))
```

Explanation:

* `(( ))` is the **preferred modern method** for arithmetic in Bash
* Automatically treats variables as numbers
* Cleaner and more readable than `let`

Equivalent form:

```bash
(( num_four = num_one + num_two ))
```

---

## Printing the Second Result 

```bash
echo "Result is ${num_four}"
```

* Displays the result of the addition operation

---

## Calling `main()` Safely 

```bash
main "$@"
```

Why `"$@"` is used:

* Preserves argument boundaries
* Prevents word splitting
* Safe and standard practice in Bash scripting

---

## Summary 

The `ArithmeticOperation.sh` script demonstrates:

* Reading numeric input from users
* Performing multiplication using `let`
* Performing addition using `(( ))`
* Storing arithmetic results in variables
* Writing structured and safe Bash scripts
**This file serves as complete documentation for `ArithmeticOperation.sh`.** 
