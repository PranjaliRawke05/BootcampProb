#!/bin/bash -x

sum=0
for (( i=0; i<5; i++ ))
do
	num=$(((RANDOM%99)+1))
	sum=$(($sum+$num))
done
avg=$(($sum/5))
echo "Sum is:::"$sum
echo "Average is:::"$avg
