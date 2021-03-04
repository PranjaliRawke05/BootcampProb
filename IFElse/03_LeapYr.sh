#!/bin/bash -x

echo "Enter Year:"
read yr

div1=$(($yr%4))
div2=$(($yr%100))
div3=$(($yr%400))

if [ $div1 -eq 0 -a $div2 -ne 0 -o $div3 -eq 0 ]
then
	echo "Leap Year"
else
	echo "Not a Leap Year"
fi
