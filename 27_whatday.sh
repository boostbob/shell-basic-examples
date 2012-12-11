#!/bin/bash 
typeset -i year month day mm=1 sum week yy
typeset -i leap=0

months=( 0 31 28 31 30 31 30 31 31 30 31 30 31 )
weekday=( sunday monday tuesday wednesday thursday friday saturday )

month=${1:-`date '+%m'`}
day=${2:-`date '+%d'`}
year=${3:-`date '+%Y'`}

let yy=year-1
let sum=yy*365+yy/400+yy/4-yy/100

if [ `expr $year % 4` -ne 0 ]
then
	leap=0
elif [ `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0 ]
then
	leap=1
fi

while [ $sum -lt $month ]
do
	sum=`expr $sum + ${months[$mm]}`
	mm=`expr $mm + 1`
done

sum=`expr $sum + $day + $leap`
week=`expr $sum % 7`
echo "$month $day, $year is ${weekday[$week]}"

exit 0
