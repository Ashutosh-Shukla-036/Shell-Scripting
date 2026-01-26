#!/usr/bin/env bash

set -euo pipefail

main() {
	#Reading a input from user.
	read -p "Enter your name: " name

	read -p "Enter your age: " age

	echo "Your name is $name and age is $age"
}

main "$@"
