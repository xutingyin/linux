#! /bin/sh
echo "-----------command_parm-----------"
# $0默认会获取到当前shell文件的名称，但是，它也包含(./)，如果你以完整路径运行，那么这还会包含目录名。因此，上面通过basename命令来获取单纯的文件名$(basename $0)。
echo "file name: $0"
echo "base file name $(basename $0)"   #bash中，$( )与` `（反引号）都是用来作命令替换的。注意：$()并不是所有的类unix系统都支持这种方式，但反引号是肯定支持的。
echo "param1:$1"
echo "param2:${2}"
echo "param num:$#" # S#用于获取参数个数
echo "-----------读取所有参数--------"
echo "-----------使用S#--------------"
for(( index=0; index<=$#; index++ ))
do
 echo ${!index}
done
echo "----------使用S*-----------"
#$* 会将命令行上提供的所有参数当作一个单词保存, 我们得到的值也就相当于是个字符串整体。
#$@ 会将命令行上提供的所有参数当作同一字符串中的多个独立的单词。
# 如果下面$*和$@没有加引号，也没有什么区别，应为for循环会通过IFS定义的值进行分割，因此默认情况下，如果我们上面在for循环处不加引号，那么根据IFS中所定义的空格分割。
var1=$*
var2=$@
echo "var1:$var1"
echo "var2:$var2"
countvar1=1
countvar2=1
for param in "$*"
do
    echo "first loop param$countvar1: $param"
    countvar1=$[ $countvar1 + 1 ]
done
echo "countvar1: $countvar1"

for param in "$@"
do
    echo "second param$countvar2: $param"
    countvar2=$[ $countvar2 + 1 ]
done
echo "countvar2: $countvar2"

