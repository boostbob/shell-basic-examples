#!/bin/bash 
weekdays=( sunday monday tuesday wednesday thursdat friday saturday )
echo ${weekdays[0]}
echo "weekdays数组长度是${#weekdays[@]}"
echo "weekdays数组长度是${#weekdays[*]}"
echo "sunday的长度是${#weekdays[0]}"
echo "wednesday的长度是${#weekdays[3]}"

weekdays_more[0]=sunday
weekdays_more[1]=monday
echo ${weekdays_more[1]}

array=( [0]="first" [1]="second" [2]="third" )
echo ${array[0]}
echo ${array[1]}
echo ${array[2]}
echo ${array[3]} #输出空

echo 删除某一个元素
unset array[0]
echo ${array[0]}

echo 删除整个数组
unset array
echo ${#array[@]}
echo ${#array[*]}

echo 文件数组
file_array=(*.sh)
echo ${file_array[@]}
echo ${#file_array[@]}
