#!/bin/bash -x

for num in {1..5}
do
        value=$(((RANDOM%999)+1))

	if [ $num -eq 1 ]
	then
		max=$value
		min=$value
	else
		if [ $value -gt $max ]
		then
			max=$value
		fi
		if [ $value -lt $min ]
		then
			min=$value
		fi
	fi


done
echo "Minimum Value:"$min
echo "Maximum Value:"$max


