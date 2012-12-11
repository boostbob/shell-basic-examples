#!/bin/bash 
var=/one/two/three
echo 文件名是${var##*/}
echo 目录是${var%/*}

var=$HOME/src/cmd
echo 除了HOME的路径名是${var#$HOME}
