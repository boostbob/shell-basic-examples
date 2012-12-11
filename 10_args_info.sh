#!/bin/bash 
echo "shell script name=$0"

args_num=$# #参数的个数
echo "参数个数是$args_num"

last_arg=${!args_num} 
echo "最后参数是$last_arg"
