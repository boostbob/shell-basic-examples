#!/bin/bash 
n=6/3
echo 默认是字符串类型
echo "n=$n"
echo 设置为number类型
typeset -i n
n=6/3
echo n=$n
