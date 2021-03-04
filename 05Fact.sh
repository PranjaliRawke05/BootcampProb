#!/bin/bash -x

echo "Enter number"
read num

fact=1

if [ $num -eq 0 -o $num -eq 1 ]
then
	echo "1"
else

	for (( i=2; i<=$num; i++))
	do
		fact=$(($fact*$i))
	done
	echo $fact
fi

