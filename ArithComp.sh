#!/bin/bash

echo "Enter three inputs"
read a
read b
read c

ans=$(($a+$b*$c))
echo $ans
ans1=$(($a*$b+$c))
echo $ans1
ans2=$(($c+$a/$b))
echo $ans2
ans3=$(($a%$b+$c))
echo $ans3
