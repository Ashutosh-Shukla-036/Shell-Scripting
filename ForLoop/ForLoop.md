# 📘 Day X – Bash Loops (`loops.sh`) – Complete Notes

This document provides a **step-by-step explanation** of the Bash script that demonstrates **different types of loops** commonly used in shell scripting.
Each section directly maps to the actual code in the script.

---

## 1️⃣ Shebang Line

```bash
#!/usr/bin/env bash
```

**Purpose:**

* Ensures the script runs using the system’s default Bash interpreter
* Improves portability across Linux environments

---

## 2️⃣ Enabling Strict / Safe Bash Mode

```bash
set -euo pipefail
```

### What each option does:

| Flag       | Meaning                               |
| ---------- | ------------------------------------- |
| `-e`       | Exit immediately if any command fails |
| `-u`       | Treat unset variables as an error     |
| `pipefail` | Fail a pipeline if any command fails  |

This prevents silent failures and forces defensive scripting.

---

## 3️⃣ `main()` Function

```bash
main() {
    ...
}
```

**Why use `main()` in Bash:**

* Prevents accidental execution when sourcing the script
* Improves readability and structure
* Makes argument handling predictable
* Considered a best practice for non-trivial scripts

---

## 4️⃣ Looping Over Numbers (Brace Expansion)

```bash
echo "========== 1. Numbers (brace expansion) ============"
for i in {1..5}; do
    echo "Number: $i"
done
```

### Explanation:

* `{1..5}` is **brace expansion**, evaluated before execution
* Expands to: `1 2 3 4 5`
* `for i in ...` iterates over each value
* `$i` holds the current iteration value

📌 **Important:**

* Brace expansion works only with literal ranges (not variables)

---

## 5️⃣ Looping Over Script Arguments

```bash
echo "========= 2. Script arguments =================="
if [ "$#" -eq 0 ]; then
    echo "No arguments passed"
else
    for i in "$@"; do
        echo "Arguments: $i"
    done
fi
```

### Key concepts:

#### `$#`

* Stores the **number of arguments** passed to the script

#### `$@`

* Represents **all script arguments**
* Quoted `"$@"` preserves each argument as a separate word

### Flow:

1. Check if argument count is zero
2. If no arguments → print message
3. Else → loop over each argument and print it

---

## 6️⃣ Looping Over Files in a Directory

```bash
echo "========= 3. File loop section =============="
for file in *.sh; do
    [ -e "$file" ] || continue
    echo "shell file: $file"
done
```

### Explanation:

* `*.sh` expands to all shell script files in the directory
* `[ -e "$file" ]` checks if the file exists
* `|| continue` skips the loop if no `.sh` files are found

📌 **Why this check matters:**

* Prevents printing literal `*.sh` when no files match

---

## 7️⃣ Looping Over an Array

```bash
echo "========== 4. Array loop ==============="
fruits=("apple" "banna" "mango")
for fruit in "${fruits[@]}"; do
    echo "Fruit: $fruit"
done
```

### Explanation:

* Arrays are declared using parentheses `()`
* `"${fruits[@]}"` expands each element safely
* Loop iterates once per array element

📌 **Best Practice:**

* Always quote array expansions to avoid word splitting bugs

---

## 8️⃣ Calling `main()` Safely

```bash
main "$@"
```

### Why `"$@"` is used:

* Preserves argument boundaries
* Avoids unexpected splitting
* Standard way to forward arguments

---

## 🔑 Summary

This script demonstrates:

* Numeric loops using brace expansion
* Argument-based loops using `$@`
* Defensive file iteration using glob checks
* Array-based loops
* Clean structure using `main()`
* Safe scripting with `set -euo pipefail`

This is a **foundational loop reference** for Bash scripting.

