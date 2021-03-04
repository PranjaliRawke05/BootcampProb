#!/bin/bash -x

echo "Enter Number"
read n

count=0
c=0
for (( i=2; i<=$n; i++))
do

	while [ $(($n%$i)) -eq 0 ]
	do
		ArrayN[((count++))]=$i
		n=$(($n/$i))
		c=$(($c+1))
	done
done
echo $c
echo ${!ArrayN[@]}

counter=0
flag=0
num=0
for (( j=0; j<$c; j++))
do

	num=${ArrayN[j]}
	echo ${ArrayN[j]}
	for (( i=2; i<$num; i++))
	do
		if [ $(($num%$i)) -eq 0 ]
		then
			flag=1
		fi
	done

	if [ $flag -eq 0 ]
	then
		FactorArray[((counter++))]=$num
	fi
done
echo ${FactorArray[@]}
