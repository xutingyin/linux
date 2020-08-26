#!/bin/bash
#-------------条件选择-----------------------------------------------------
#-------------数值比较：-eq,-ge,-gt,-le,-lt,-ne  分别等价于 ==,>=,>,<=,<,!=
echo "----------------条件选择----------------"
num1=100
num2=200

if test $num1 -eq $num2
then
   echo "num1 = num2"
else
   echo "num1 != num2"
fi

#如果使用> 或者< 符号，需要使用\进行转义。因为这两个符号在linux中是重定向符
if test $num1 \> $num2
then
   echo "num1 > num2"
else
   echo "num1 < num2"
fi

# 如果不想使用转义符号，则使用((  ))进行替换test，注意:1、括号两边有空格,2、(( ))只适用于数值类型
if (( $num1 > $num2 ))
then
   echo "num1 > num2"
else
   echo "num1 < num2"
fi

#--------------字符串比较：=,!=,<,>, -n[判断字符串长度是否非0],-z[判断字符串长度是否为0]
echo "----------字符串比较-------------------"
str1=test
str2=Test
if test "$str1 = $str2"
then
   echo "str1 = str2"
else 
   echo "str1 != str2"
fi
# 在test使用>,<的时候，需要进行转义
if test "$str1 \< $str2"
then
   echo "str1 < str2"
else
   echo "str1 >= str2"
fi

# 如果不想使用转义、可以使用[[ ]]进行替换test,注意：1、方括号两边都有空格
if (( $str1 < $str2 ))
then
   echo "str1 < str2"
else
   echo "str1 >= str2"
fi


