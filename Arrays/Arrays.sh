#!/usr/bin/env bash

set -euo pipefail

main() {
	#This is how array is definded in shell scripting. Space separated data type free.
	my_array=( 1 2 3 4 5 Ashutosh Shukla "Ashutosh Shukla" 6 7 8 9 )

	#Printing full array.
	echo "${my_array[@]}"

	#Printing specific index value. Index starts from 0.
	echo "My First name is ${my_array[5]}"

	echo "My surname is ${my_array[6]}"

	echo "My full name is ${my_array[7]}"

	#Printing the length of array.
	echo "Length of this array is ${#my_array[@]}"

	#Printing specific length of array.
	echo "${my_array[@]:4}"

	echo "${my_array[@]:2:3}"
}

main "$@"
