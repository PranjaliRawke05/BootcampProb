#!/bin/bash


c=0;c1=0
while [ $c -le 11 -o $c1 -le 11 ]
do
	coin=$((RANDOM%2))
	if [ $coin -eq 1 ]
	then
		c=$(($c+1))
	else
		c1=$(($c1+1))
	fi
done
if [ $c -gt $c1 ]
then
	echo "Heads Win"
else
	echo "Tails Win"
fi
