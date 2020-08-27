#!/bin/sh
echo "-------------获取用户输入----------------"
echo -n "yes or no(y/n)?"
read choice
echo "your choice:$choice"

#如果未指定输入变量，会将输入值默认存储到REPLY变量中
echo -n "yes or no(y/n)?"
read 
echo "your choice:$REPLY"

# 接收多个输入参数
echo "---------------接收多个输入参数---------------"
read -p "what's your name?" first last
echo  first:$first
echo "last:$last"
# 测试输入超时未输入
echo "--------5秒超时未输入----------"
if read -t 5 -p "what's your name?" name
then
    echo "Hello $name"
else
    echo "Sorry,timeout!"
fi

