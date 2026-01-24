#!/usr/bin/env bash

set -euo pipefail

main(){
	echo "Hello World!"
	
	#This is local variable
	local name="Ashutosh"
	local age=20

	echo "My name is $name, age is $age"

	#This is ReadOnly variable
	readonly COLLEGE="CMRIT"

	echo "My college is $COLLEGE"
}

main "$@"


