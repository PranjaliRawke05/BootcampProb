#!/bin/bash -x

count=0
for (( i=1; i<=100; i++ ))
do
	num=$i
	n1=$(($num%10))
	n2=$(($num/10))
	if [ $n1 -eq $n2 ]
	then
		ArrayN[((count++))]=$num
	fi
done
echo ${ArrayN[@]}
