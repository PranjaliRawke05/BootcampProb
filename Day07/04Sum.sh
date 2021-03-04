#!/bin/bash -x

counter=0

ArrayN[((counter++))]=23
ArrayN[((counter++))]=13
ArrayN[((counter++))]=44
ArrayN[((counter++))]=22
ArrayN[((counter++))]=33



sum=0
for (( j=0; j<5; j++ ))
do
	
	num=${ArrayN[j]}
	while [ $num -gt 0 ]
	do
		k=$(($num%10))
		num=$(($num/10))
		sum=$(($sum+$k))
	done
	SumArray[j]=$sum

done
echo "Array of Sum:"${SumArray[@]:0:5}
