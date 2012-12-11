#!/bin/bash 
isalive() {
	NODE=$1
	$PING -c 3 $NODE >/dev/null 2>&1

	if [ $? -eq 0 ]
	then
		return 1
	else
		return 0
	fi
}
