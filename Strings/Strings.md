# Bash Strings  



---

## Shebang and Bash Environment 

```bash
#!/usr/bin/env bash
```

* Uses the user’s default Bash interpreter
* More portable than hardcoding `/bin/bash`
* Recommended for cross-platform compatibility

---

## Safe Bash Settings 

```bash
set -euo pipefail
```

### Flag Explanation

| Flag          | Meaning                               |
| ------------- | ------------------------------------- |
| `-e`          | Exit immediately if any command fails |
| `-u`          | Treat unset variables as errors       |
| `-o pipefail` | Pipeline fails if any command fails   |

* Enforces strict error handling
* Prevents silent failures
* Best practice for production-grade Bash scripts

---

## `main()` Function Structure 

```bash
main() {
    ...
}
```

### Why use `main()`

* Prevents accidental execution
* Improves readability
* Allows safe argument handling
* Makes scripts easier to debug and extend

---

## String Declaration 

```bash
my_string="This is a String"
```

### Notes

* Bash has no dedicated string data type
* Everything is treated as a string internally
* Double quotes allow spaces and variable expansion

---

## Printing a String 

```bash
echo "$my_string"
```

### Best Practices

* Always quote variables
* Prevents word splitting
* Avoids unintended glob expansion

---

## Length of a String 

```bash
echo "${#my_string}"
```

### Explanation

* `${#variable}` returns the number of characters
* Built-in Bash feature
* Faster and safer than external commands like `wc`

---

## Uppercase Conversion 

```bash
echo "${my_string^^}"
```

### Details

* `^^` converts all characters to uppercase
* Available in Bash 4.0+
* Uses parameter expansion (no subprocess)

---

## Lowercase Conversion 

```bash
echo "${my_string,,}"
```

### Details

* `,,` converts all characters to lowercase
* Available in Bash 4.0+

---

## Substring / String Slicing 

```bash
echo "${my_string:0:4}"
echo "${my_string:5:2}"
```

### Syntax

```bash
${string:offset:length}
```

### Rules

* Index starts from `0`
* `length` is optional
* Efficient and built-in

---

## String Replacement 

### Replace First Occurrence

```bash
echo "${my_string/String/Text}"
```

* Replaces only the first match

### Replace All Occurrences

```bash
echo "${my_string//i/I}"
```

* `//` replaces all matches

---

## Summary 

* Bash strings are powerful despite no explicit string type
* Parameter expansion avoids external commands
* Proper quoting and strict mode improve script safety

