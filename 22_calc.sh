#!/bin/bash 
c=2
d=3

answer=`expr $c + $d`
echo $answer

answer=`expr $c - $d`
echo $answer

answer=`expr $c \* $d`
echo $answer

answer=`expr $c / $d`
echo $answer

answer=`expr $c % $d`
echo $answer

answer=$(($c + $d))
echo $answer

answer=$(($c - $d))
echo $answer

answer=$(($c * $d))
echo $answer
answer=$(($c ** $d))
echo $answer

answer=$(($c / $d))
echo $answer

answer=$(($c % $d))
echo $answer

answer=$(($c ^ $d))
echo $answer
