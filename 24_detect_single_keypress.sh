#!/bin/bash 
keypress=$(head -c1)
echo $keypress

case $keypress in
	j|J)
		if [ $theta -ne 0 ]
		then
			theta=$(($theta-1))
		else
			theta = 90
		fi
	;;
	k|K)
		if [ $theta -ne 90 ]
		then
			theta=$(($theta+1))
		else
			theta = 0
		fi
	;;
esac

exit 0
