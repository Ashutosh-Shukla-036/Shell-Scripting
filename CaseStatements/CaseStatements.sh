#!/usr/bin/env bash

set -euo pipefail

main() {
	echo "Enter A to start the server"
	echo "Enter B to re-start the server"
	echo "Enter C to Stop the server"
	
	read -p "Enter here -> " choice

	case "$choice" in
		A)
			echo "Starting the server ........"
			sleep 5
			echo "Server started"
			;;
		B)
			echo "Re-starting the server ......"
			sleep 5
			echo "Server re-started"
			;;
		C)
			echo "Stopping the server ......."
			sleep 5
			echo "Server stopped"
			;;
		*)
			echo "Please enter a valid value ....."
			;;
	esac

}
main "$@"
