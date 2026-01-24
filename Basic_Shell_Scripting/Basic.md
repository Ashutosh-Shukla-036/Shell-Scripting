# Bash Shell Scripting – Complete Beginner-to-Strong Basics Notes


---

## What is a Shell?

A **shell** is a program that acts as an **interface between the user and the Linux kernel**.

You type commands → Shell interprets them → Kernel executes them.

### Common shells in Linux

* `sh` – Original Bourne Shell
* `bash` – Bourne Again Shell (**most common**)
* `zsh` – Extended bash-like shell
* `fish` – Friendly Interactive Shell

In WSL Ubuntu, **bash is the default shell**.

---

## What is Shell Scripting?

A **shell script** is a file containing a sequence of Linux commands written to:

* Automate tasks
* Avoid repetitive work
* Perform system operations

Instead of typing commands one-by-one, you write them once and run them as a program.

---

## Types of Shell Scripts

### 1. Interactive Shell Scripts

* Require user input
* Example: asking username/password

### 2. Non-Interactive Shell Scripts

* Run automatically
* Used in cron jobs, automation, DevOps

We are writing **non-interactive Bash scripts**.

---

## What is Bash?

**Bash = Bourne Again Shell**

It is:

* A command-line shell
* A scripting language
* Backward compatible with `sh`

---

## Creating a Shell Script File

### Naming convention

```bash
Basic_Shell_Script.sh
```

* `.sh` is not mandatory but **recommended**
* Helps identify shell scripts easily

---

## Shebang (#!) – MOST IMPORTANT

### What is Shebang?

The **shebang** tells Linux **which interpreter should execute the script**.

### Correct shebang for Bash

```bash
#!/usr/bin/env bash
```

### Why this is better than `/bin/bash`

* Works across different Linux systems
* Uses the first `bash` found in `PATH`
* Portable and professional

Bad practice (hardcoded path):

```bash
#!/bin/bash
```

---

## Why Script Didn’t Run Initially?

You got:

```text
Permission denied
```

Because:

* Linux needs **execute permission** to run a file

---

## chmod +x – Making Script Executable

### Command

```bash
chmod +x 01_basic_bash_script.sh
```

### What it does

* Adds **execute (x)** permission to the file

### Verify permissions

```bash
ls -l Basic_Shell_Script.sh
```

Before:

```text
-rw-r--r--
```

After:

```text
-rwxr-xr-x
```

---

## How to Run a Bash Script

### Correct way (recommended)

```bash
./Basic_Shell_Script.sh
```

Why `./`?

* Linux does **not** execute files from current directory by default
* Security feature

### Alternate way

```bash
bash Basic_Shell_Script.sh
```

This bypasses shebang → not ideal for real projects

---

## set -euo pipefail (Safety Flags)

```bash
set -euo pipefail
```

This makes your script **fail fast and safely**.

### `-e`

* Exit immediately if any command fails

### `-u`

* Error on usage of undefined variables

### `pipefail`

* Fail pipeline if **any command** inside fails

Used in **production-grade scripts**

---

## Comments in Bash

### Single-line comment

```bash
# This is a comment
```

### Multi-line comment (via here-doc trick)

```bash
: << COMMENT
This is
multi-line
comment
COMMENT
```

---

## Variables in Bash

### Declaring variables

```bash
name="Ashutosh"
age=20
```

No spaces around `=`

### Using variables

```bash
echo "My name is $name and age is $age"
```

---

## Read-only (Constant) Variables

```bash
readonly COLLEGE="CMRIT"
```

* Cannot be modified later
* Convention: **UPPERCASE** for constants

---

## Functions in Bash

### Defining a function

```bash
main() {
  echo "Hello world"
}
```

⚠️`main` is **not special** in Bash

It is just a **normal function name**

---

## Why Use main() Pattern?

### 1. Clean structure

* All logic in one place

### 2. Prevent accidental execution

* Safe when script is sourced

### 3. Better error handling

* Works cleanly with `set -euo pipefail`

---

## local Variables (VERY IMPORTANT)

```bash
local name="Ashutosh"
```

* Scope limited to function
* Prevents variable leakage
* Mandatory for serious scripts

---

## Passing Arguments – "$@"

### Command-line arguments

```bash
./script.sh one two
```

Inside script:

* `$1` → one
* `$2` → two

### Correct function call

```bash
main "$@"
```

Passes **all arguments safely** into `main`

---

## 1️⃣Final Script 

```bash
#!/usr/bin/env bash
set -euo pipefail

main() {
    echo "Hello world"

    local name="Ashutosh"
    local age=20
    readonly COLLEGE="CMRIT"

    echo "My name is $name and age is $age"
    echo "My college is $COLLEGE"
}

main "$@"
```

---

## Summary

* What shell & bash are
* How shell scripts work
* Shebang and portability
* Execute permissions (`chmod +x`)
* Safe scripting with `set -euo pipefail`
* Variables, constants, comments
* Functions and `main()` pattern
* Argument handling with `$@`

---

