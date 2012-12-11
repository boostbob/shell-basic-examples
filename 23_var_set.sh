#!/bin/bash 
default="default"

echo 已被定义，但是值为空，则替换默认值
a=""
echo "${a:=$default}"
echo "替换后a=$a"
echo -----------------------

echo 没有被定义，才被替换成默认值
echo "${b:=$default}"
echo "替换后b=$b"
echo -----------------------

echo 没有被定义才替换未默认值，已被定义即便为空也不替换
c=""
echo "${c=$default}"
echo "替换后c=$c"
echo -----------------------

echo 已被定义，但是值为空，则输出默认值但是不替换
d=""
echo "${d:-$default}"
echo "替换后d=$d"
echo -----------------------

echo 已定义输出为空，未定义则输出默认值，但是不替换
e=""
echo "${e-$default}"
echo "替换后d=$d"
echo -----------------------
echo 已定义输出为空，未定义则输出默认值，但是不替换
echo "${f-$default}"
echo "替换后f=$f"
echo -----------------------

echo 已定义并且非空则使用输出默认值，变量不会被替换，如果不必非空，则使用+
g="not empty"
echo "${g:+$default}"
echo "替换后g=$g，还是not empty，没有被替换成default"
echo -----------------------

echo 已被定义为非空值，就使用已定义的值，已定义但是没有真正的值或者完全未被定义则输出默认值，并且脚本会退出运行，如果不必为非空值则使用?
echo "${z:?$default}" #会输出错误信息和代码行号位置信息
echo "我不会被输出"
