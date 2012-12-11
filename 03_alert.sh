#!/bin/bash 
alert() {
	#usage: alert <$?> <object>

	if [ "$1" -ne 0 ]
	then
		echo "WARNING: $2 did not completed successfully." >&2
		exit $1
	else
		echo "INFO: $2 completed successfully." >&2
	fi
}
