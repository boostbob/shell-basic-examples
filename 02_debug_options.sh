#!/bin/bash 
debug=1
test $debug -gt 0 && echo "Debug is on"
echo -n "Can you write device drivers?"

read answer
answer='echo $answer | tr [a-z] [A-Z]'
test $debug -gt 0 && echo "The answer is $answer"

if [ $answer = Y ] 
then
	echo "Wow, you must be very skilled"
	test $debug -gt 0 && echo "The answer is $answer"
else
	echo "Neither can I, I'm just an example shell script"
	test $debug -gt 0 && echo "The answer is $answer"
fi
