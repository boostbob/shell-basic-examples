#!/bin/echo Warning: this library should be sourced!
#ostype(): 当前系统中定义了OSTYPE变量
ostype() {
	osname='uname -so'
	OSTYPE=UNKNOWN
	
	case $osname in
		"FreeBSD") OSTYPE="FREEBSD"
		;;
		"SunOS") OSTYPE="SOLARIS"
		;;
		"Linux") OSTYPE="Linux"
		;;
	esac

	echo "$osname"
	return 0
}
