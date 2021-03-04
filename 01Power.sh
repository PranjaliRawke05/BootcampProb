#!/bin/bash -x

echo "Enter Number"
read num
echo "Enter Power"
read power


ans=1

for (( i=0; i<power; i++))
do
	ans=$(($ans*$num))
done

echo $num"power of "$power"is"$ans
