#!/bin/bash -x

echo "Enter n"
read n
power=$((2**$n))
i=0
while [ $i -le $power ]
do
	if [ $i -eq 256 ]
	then
		exit
	else
		mul=$(($n**$i))
		echo $mul
		i=$(($i+1))
	fi
done
