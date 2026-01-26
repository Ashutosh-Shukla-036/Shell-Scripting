#!/usr/bin/env bash

set -euo pipefail

main() {
	#Read two numbers.
	read -p "Enter number: " num_one
	read -p "Enter number: " num_two

	#Now arithmetic operation in bash are performed using let.
	let num_three=$num_one*$num_two

	echo "Result is ${num_three}"

	#We can also use (( )) to perform arithmetic operation.
	num_four=$(($num_one+$num_two))

	echo "Result is ${num_four}"
}

main "$@"
