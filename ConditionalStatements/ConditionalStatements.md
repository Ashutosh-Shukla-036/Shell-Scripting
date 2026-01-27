# Bash Conditional Statements  

This document explains the **`ConditionalStatements.sh` script line by line**, covering how **conditional logic** works in Bash using `if`, `elif`, `else`, and nested conditions.
All explanations correspond **directly to the code implemented in `ConditionalStatements.sh`**.

---

## Shebang Line 

```bash
#!/usr/bin/env bash
```

* Ensures the script runs using the system’s default Bash interpreter
* Improves portability across environments

---

## Enabling Safe Bash Mode 

```bash
set -euo pipefail
```

Purpose:

| Option     | Meaning                              |
| ---------- | ------------------------------------ |
| `-e`       | Exit immediately if a command fails  |
| `-u`       | Treat unset variables as errors      |
| `pipefail` | Fail a pipeline if any command fails |

This enforces strict error handling and avoids silent failures.

---

## Comparison Operators Used in Bash 

```bash
# Equals                     -----------> -eq or ==
# Greater then or equal to   -----------> -ge
# Less then or equal to      -----------> -le
# Not Equals                 -----------> -ne or !=
# Greater then               -----------> -gt
# Less then                  -----------> -lt
```

Explanation:

* `-eq`, `-ne`, `-gt`, `-lt`, `-ge`, `-le` are **numeric comparison operators**
* `==` and `!=` are commonly used for **string comparison**
* These operators are evaluated inside `[[ ]]`

---

## `main()` Function Structure 

```bash
main() {
    ...
}
```

Why use `main()`:

* Prevents accidental execution when sourcing the script
* Improves readability
* Encourages structured scripting

---

## Basic `if-else` Statement 

```bash
read -p "Enter your age: " age

if [[ $age -ge 18 ]]; then
    echo "Your eligiable to vote"
else
    echo "Your are not eligiable to vote"
fi
```

Explanation:

* Reads age from user input
* `-ge` checks if age is **greater than or equal to 18**
* Executes the appropriate block based on the condition

This demonstrates a **simple decision-making structure**.

---

## `elif` Conditional Statement 

```bash
read -p "Enter your 10th class percentage: " percentage

if [[ $percentage -ge 80 ]]; then
    echo "First class"
elif [[ $percentage -ge 60 ]]; then
    echo "Second class"
else
    echo "Fail!!!!"
fi
```

Explanation:

* `elif` allows checking multiple conditions sequentially
* Conditions are evaluated **top to bottom**
* The first matching condition is executed

Use case:

* Categorizing results based on numeric ranges

---

## Nested `if-else` Statements 

```bash
read -p "Enter your age again: " age
read -p "Are you an Indian citizen? (yes/no): " citizen

if [[ $age -ge 18 ]]; then
    if [[ $citizen == "yes" ]]; then
        echo "You CAN vote in India"
    else
        echo "You are NOT eligible to vote in India"
    fi
else
    echo "You are under 18, cannot vote"
fi
```

Explanation:

* Demonstrates **nested conditional logic**
* First condition checks age eligibility
* Second condition checks citizenship status
* Both conditions must be satisfied for voting eligibility

This models **real-world decision logic**.

---

## Using `[[ ]]` Instead of `[ ]` 

Why `[[ ]]` is preferred:

* Safer and more powerful
* Prevents word splitting and globbing
* Supports pattern matching
* Recommended for modern Bash scripts

---

## Calling `main()` Safely 

```bash
main "$@"
```

Why `"$@"` is used:

* Preserves command-line arguments
* Prevents word splitting
* Standard best practice

---

## Summary 

The `ConditionalStatements.sh` script demonstrates:

* Numeric and string comparisons
* Basic `if-else` logic
* `elif` for multiple conditions
* Nested `if-else` blocks
* Interactive decision making using user input
* Writing structured and safe Bash scripts
**This file serves as complete documentation for `ConditionalStatements.sh`.** 
