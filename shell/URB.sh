#!/bin/bash
while true
do
 echo -n "please input your num:"
 read num
 if(($num == 10));then
  echo "you are great!"
  break
 fi
 if(($num < 10));then
  echo "The num is small."
 fi
 if(($num > 10));then
  echo "The num is big."
 fi   
done
