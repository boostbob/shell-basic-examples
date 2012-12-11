#!/bin/bash 
setupenv() {
	if [ "$OSTYPE" = "" ]
	then
		ostype
	fi

	NAME='uname -n'
	case $OSTYPE in
		"LINUX" )
			PING=/usr/bin/ping 
		;;
		"FREEBSD" )
			PING=/sbin/ping
		;;
		"SOLARIS" )
			PING=/usr/sbin/ping 
		;;
		*)
		;;
	esac
}
