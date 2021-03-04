#!/bin/bash -x

counter=0

for (( i=1; i<=10; i++ ))
do
	NumArray[((counter++))]=$((RANDOM%1000))
done
echo ${NumArray[@]:0:10}

for (( i=0; i<10; i++ ))
do
	for (( j=0; j<10-$i-1; j++ ))
	do
		tempj=$(($j+1))
		if [ ${NumArray[j]} -gt ${NumArray[tempj]} ]
		then
			temp=${NumArray[j]}
			NumArray[j]=${NumArray[tempj]}
			NumArray[tempj]=$temp
		fi
	done
done

echo "Sorted array:"${NumArray[@]:0:10}

max=${NumArray[8]}
min=${NumArray[1]}

echo "Second Max:"$max
echo "Second Min:"$min
