#!/bin/bash 
timeout() {
	waitfor=5
	command=$*
	$command &
	commandpid=$!

	(sleep $waitfor ; kill -9 $commandpid >/dev/null 2>&1) &
	watchdogpid=$!
	sleeppid='ps $ppid $watchdogpid | awk '{print $1}''
	wait $commandpid
	kill $sleeppid >/dev/null 2>&1
}

#read -t参数可以解决输入超时
read -t 10 #10秒超时
