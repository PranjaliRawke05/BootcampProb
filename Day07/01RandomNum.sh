#!/bin/bash -x

counter=0

for (( i=1; i<=10; i++ ))
do
	NumArray[((counter++))]=$((RANDOM%1000))
done
echo ${NumArray[@]:0:10}

max=${NumArray[0]}
min=${NumArray[0]}
smax=${NumArray[0]}
smin=${NumArray[0]}
for (( j=0; j<10; j++ ))
do
	if [ ${NumArray[j]} -ge $max ]
	then
		smax=$max
		max=${NumArray[j]}
	elif [ ${NumArray[j]} -gt $smax ]
	then
		smax=${NumArray[j]}
	fi

	if [ ${NumArray[j]} -le $min ]
	then
		smin=$min
		min=${NumArray[j]}
	elif [ ${NumArray[j]} -lt $smin ]
	then
		smin=${NumArray[j]}
	fi
done
echo ${NumArray[@]}
echo "Max:"$max
echo "Second MAx:"$smax
echo "Min:"$min
echo "Second Min:"$smin
