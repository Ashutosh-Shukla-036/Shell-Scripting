# Bash Arrays  
---

## What is an Array in Bash? 

An **array** in Bash is a variable that can hold **multiple values** under a single name.

Key characteristics:

* Indexed (index starts from `0`)
* Space-separated
* No data types (everything is treated as a string)
* Supports mixed values (numbers, strings, quoted strings)

---

## Declaring an Array 

```bash
my_array=( 1 2 3 4 5 Ashutosh Shukla "Ashutosh Shukla" 6 7 8 9 )
```

Rules:

* Parentheses `()` are mandatory
* Values are separated by spaces
* Quotes are required for elements containing spaces

---

## Array Indexing 

Array index starts from `0`.

| Index | Value           |
| ----- | --------------- |
| 0     | 1               |
| 1     | 2               |
| 2     | 3               |
| 3     | 4               |
| 4     | 5               |
| 5     | Ashutosh        |
| 6     | Shukla          |
| 7     | Ashutosh Shukla |
| 8     | 6               |
| 9     | 7               |
| 10    | 8               |
| 11    | 9               |

Accessing elements:

```bash
echo "${my_array[5]}"   # Ashutosh
echo "${my_array[6]}"   # Shukla
echo "${my_array[7]}"   # Ashutosh Shukla
```

---

## Printing the Entire Array 

### Correct and Recommended

```bash
echo "${my_array[@]}"
```

### Why `[@]` is preferred over `[*]`

| Syntax        | Behavior                               |
| ------------- | -------------------------------------- |
| `${array[@]}` | Expands each element separately (safe) |
| `${array[*]}` | Expands into one combined string       |
Best practice: **Always use `[@]` unless you explicitly want a single string** 

---

## Finding Length of an Array 

```bash
echo "${#my_array[@]}"
```

* `#` returns the number of elements

---

## Array Slicing 

### Slice from a starting index

```bash
echo "${my_array[@]:4}"
```

Starts from index `4` till the end.

### Slice with start and length

```bash
echo "${my_array[@]:2:3}"
```

* Starts at index `2`
* Prints `3` elements

---

## Using Arrays Inside Functions 

Best practice is to wrap script logic inside a `main()` function.

```bash
main() {
    local my_array=( 1 2 3 4 5 )
    echo "${my_array[@]}"
}
```

Benefits:

* Prevents accidental execution
* Improves readability
* Enables safe error handling

---

## Passing Command-Line Arguments Safely 

Correct way:

```bash
main "$@"
```

Why:

* Preserves arguments with spaces
* Prevents word splitting
* Required for safe scripting



---

## Complete Example Script 

```bash
#!/usr/bin/env bash
set -euo pipefail

main() {
    my_array=( 1 2 3 4 5 Ashutosh Shukla "Ashutosh Shukla" 6 7 8 9 )

    echo "${my_array[@]}"
    echo "My First name is ${my_array[5]}"
    echo "My surname is ${my_array[6]}"
    echo "My full name is ${my_array[7]}"

    echo "Length of this array is ${#my_array[@]}"
    echo "${my_array[@]:4}"
    echo "${my_array[@]:2:3}"
}

main "$@"
```

---

## Key Takeaways 

* Bash arrays are indexed and start from `0`
* Always prefer `${array[@]}` over `${array[*]}`
* Use quotes when expanding arrays
* Use `local` variables inside functions
* Always call `main` with `"$@"`

---
