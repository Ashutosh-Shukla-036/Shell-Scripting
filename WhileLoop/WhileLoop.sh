#!/usr/bin/env bash

set -euo pipefail

main() {
	echo "========= While loop =========="
	count=1
	while [ $count -lt 6 ]; do
		echo "Count is: $count"
		((count++))
	done

	echo 
	echo "========= Infinite while loop ============"
	while true; do
		read -p "Enter number 0 to break: " number
		
		[[ "$number" =~ ^[0-9]+$ ]] || {
        echo "Please enter a valid number"
        continue
    }

    (( number == 0 )) && break
    echo "Number you entered: $number"
	done
}

main "$@"
