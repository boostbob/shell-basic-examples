#!/bin/bash 
echo "进程id是$$"
echo "当前父进程是$PPID"
echo "当前目录是$PWD"
echo "随机数是$RANDOM" #0-32767范围之内的随机数
echo $@ #所有的参数
echo $* #也是所有的参数

until [ -z "$1" ]
do
	echo -e "$1 \c"
	shift #$0不变,$2->$1, $N->$N-1, $1和$N不存在
	echo "参数个数变为$#"
done

echo
exit 0
