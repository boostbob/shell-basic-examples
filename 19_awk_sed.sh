#!/bin/bash 
VAR="The quick brown fox jumped over the lazy dog."

#$0保存着整个串的值
#抽取输入域并可重新排序
echo $VAR | awk '{print $1, $8, $4, $5, $6, $7, $3, $9}'

#-F开关制定分符
echo $VAR | awk -Fo {'print $4'}

#特定域中的特定值
awk '$2 == "localhost" {print $0}' /etc/hosts 

#几个值的匹配域
awk '$1 ~/^127|^172/ {print $0}' /etc/hosts

#域的数目
echo $VAR | awk '{print NF}'

#确定最后一个域
echo $VAR | awk '{print $NF}'

#确定倒数第二个域
echo $VAR | awk '{print $(NF-1)}'

#设置变量开关
TheCount=3
echo $VAR | awk -v counter=$TheCount '{print $counter}'

#条件变量
node=localhost
awk -v NODE=$node '$2 == NODE {print $3}' /etc/hosts

#循环范围
echo $VAR | awk '{for(i=3; i<=NF; i++) {printf "%s ",$i}; print ""}'

#确定串的长度
echo $VAR | awk '{print length}'

#显示字串
echo $VAR | awk '{print substr($3,2,3)}'

#把空格替换成20%
echo $VAR | sed -e "s/ /%20/g"

#去除文件中的空行和注释行
sed -e "s/#.*//g" /etc/ntp.conf | awk '{if(length != 0) print $0}'

#双查找和替换
#检查quick后把he换成she
echo $VAR | sed -e "/quick/s/he/she/g"

#产生随机数
echo $RANDOM
echo | awk '{srand(); print int(100 * rand())}'
