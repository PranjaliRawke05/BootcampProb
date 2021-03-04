#!/bin/bash -x

echo "Enter Number"
read num

for (( i=2; i<=$num/2; i++))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		echo $num"is not a prime number"
	fi

done
echo $num"is a prime numebr"

