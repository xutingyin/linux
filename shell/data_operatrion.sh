#!/bin/bash
num1=100 #变量赋值中间不能有空格
num2=200
#--------------------基本运算----------------
echo "num1 + num2=$[$num1 + $num2]"
echo "num1 - num2=$[$num1 - $num2]"
echo "num1 * num2=$[$num1 * $num2]"
echo "num1 / num2=$[$num1 / $num2]"
echo "num1 % num2=$[$num1 % $num2]"

#--------------------浮点运算----------------
num=$(echo "scale=2; 10 / 3" |bc)
echo "10/3保留两位小数 = $num"

#-------------------逻辑运算-----------------
echo "num1 < num2 =$[$num1 < $num2]"
echo "num1 > num2 =$[$num1 > $num2]"
echo "num1 == num2 =$[$num1 == $num2]"
