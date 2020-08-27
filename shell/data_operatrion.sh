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
# 如果想要将计算的结果保存起来，可以使用$()或者``符号
num=$(echo "scale=2; 10 / 3" |bc)
num_B=`echo "scale=2; 10 / 3" |bc`
echo "10/3保留两位小数 = $num"
echo "10/3保留两位小数 = $num_B"

#-------------------逻辑运算-----------------
echo "num1 < num2 =$[$num1 < $num2]"
echo "num1 > num2 =$[$num1 > $num2]"
echo "num1 == num2 =$[$num1 == $num2]"
