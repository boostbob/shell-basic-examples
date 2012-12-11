#!/bin/bash 
str=""

#字符串长度是否大于零，大于零为真
if [ -n $str ]
then
	echo "-n str is not empty string."
fi

#字符串是否被定义
if [ $str ]
then
	echo "-n str is defined."
fi

#字符串长度是否为零
if [ -z $str ]
then
	echo "-z str is empty string."
fi

if [ ! $str ]
then
	echo "! str is empty string."
fi
