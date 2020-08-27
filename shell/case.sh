#!/bin/bash
num=3
# if fi 配套使用; if then 也是配套使用
if(( $num == 1 ))
then
    echo "num=1"
elif (( $num == 2 ))
then
   echo "num=2"
elif (( $num == 3 ))
then
   echo "num=3"
else
  echo "num=4"
fi

#----------------使用 case variable in ... 替换 多个if else
echo "--------------------case in-------------------------"
case $num in 
1)
  echo "num=1" ;; # 注意每个case 后有两个分号结尾
2)
  echo "num=2";;
3)
  echo "num=3";;
4)
  echo "num=4" ;;
*)
  echo "default";;
esac 
