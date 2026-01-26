#!/usr/bin/env bash

set -euo pipefail

main() {
	my_string="This is a String"

	#Length of string.
	echo "Length of string is ${#my_string}"

	#Upper case string.
	echo "Uppercase string ---- ${my_string^^}"

	#Lower case string.
	echo "Lowercase string ---- ${my_string,,}"

}

main "$@"
