#!/usr/bin/env bash

set -euo pipefail

main() {
	echo "========== 1. Numbers (brace expansion) ============"
	for i in {1..5}; do
		echo "Number: $i"
	done

	echo 
	echo "========= 2. Script arguments =================="
	if [ "$#" -eq 0 ]; then
		echo "No arguments passed"
	else
		for i in "$@"; do
			echo "Arguments: $i"
		done
	fi

	echo 
	echo "========= 3. File loop section =============="
	for file in *.sh; do
		[ -e "$file" ] || continue
		echo "shell file: $file"
	done

	echo 
	echo "========== 4. Array loop ==============="
	fruits=("apple" "banna" "mango")
	for fruit in "${fruits[@]}"; do
		echo "Fruit: $fruit"
	done
}

main "$@"
