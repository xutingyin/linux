#! /bin/bash
# for...in循环默认是循环一组通过空格或制表符（tab键）或换行符（Enter键）分割的值。这个其实是由内部字段分隔符配置的，它是由系统环境变量IFS定义的
list="a,b,c,d,e,f,g"
for str in $list
do
  echo $str
done

#--修改系统默认的IFS值
oldIFS=$IFS
IFS=$','
for var in $str
do
  echo $var
done
#还原IFS
IFS=$oldIFS

#--------------C语言风格的循环-----------------------
echo "-----------for---------"
for((i=0;i<=10;i++)) # 这里两个括号之间没有空格也正常运行，赋值符号两端没有空格也正常。有点没弄明白为啥为这样。
do
 echo $i
done

echo "--------------while---------------"
flag=0
while test $flag -le 10  # 这里test 可以替换成 [ $flag -le 10]
do
   echo $flag
   flag=$[$flag+1]
done

echo "-------------while 2---------------"
flag=0
while (( $flag <=10 ))
do
   echo $flag
   flag=$[$flag+1]
done

#until语句就是与while语句恰好相反， while语句是在test命令退出状态码为0的时候执行循环， 而until语句是在test命令退出状态码不为0的时候执行。
echo "------------------until---------------"
flag=0
until (( flag > 10 ))
do 
 echo "until:"$flag
 flag=$[$flag + 1]
done

#----------控制循环跳出--------------
echo "-----------两层循环控制退出---------"
for ((flag=0;flag <=10;flag++))
do
  if (( $flag == 5))
  then
    echo $flag
    break
  fi
 # echo $flag
done

echo "--------------------break------------"
flag=0
while(( $flag < 10 ))
do
 for(( i=0;i<5;i++))
 do
  if((i == 2))
  then
   break 2 # 2表示外一层循环，
  fi
  echo "innerFlag=$i"
 done
  echo "outerFlag=$flag"
done

echo "--------------------continue----------"
flag=0
while(( $flag <=10 ))
do
  if(( $flag == 5 ))
  then
    continue
  fi
  echo "--------outerFlag=$flag"
  flag=$[$flag + 1]
  for(( i=0;i<20;i++))
  do
    if((i == 16))
    then
	flag=$[flag +1]
	continue 2
    fi
    echo "innerFlag=$i"
  done
done
