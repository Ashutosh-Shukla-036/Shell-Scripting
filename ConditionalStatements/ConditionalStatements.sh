#!/usr/bin/env bash

set -euo pipefail

# Operations in conditional statements
# Equals                     -----------> -eq or ==
# Greater then or equal to   -----------> -ge
# Less then or equal to      -----------> -le
# Not Equals                 -----------> -ne or !=
# Greater then               -----------> -gt
# Less then                  -----------> -lt

main() {
	# if-else statements.
	read -p "Enter your age: " age
	
	if [[ $age -ge 18 ]]; then
		echo "Your eligiable to vote"
	else
		echo "Your are not eligiable to vote"
	fi

	#elif statements.
	read -p "Enter your 10th class percentage: " percentage

	if [[ $percentage -ge 80 ]]; then
		echo "First class"
	elif [[ $percentage -ge 60 ]]; then
		echo "Second class"
	else
		echo "Fail!!!!"
	fi

	#nested if-else
	read -p "Enter your age again: " age
        read -p "Are you an Indian citizen? (yes/no): " citizen

        if [[ $age -ge 18 ]]; then
        	if [[ $citizen == "yes" ]]; then
            		echo "You CAN vote in India"
        	else
            		echo "You are NOT eligible to vote in India"
        	fi
    	else
        	echo "You are under 18, cannot vote"
    	fi
}

main "$@"
