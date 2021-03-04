#!/bin/bash

declare -A dict
echo "Enter three inputs"
read a
read b
read c

ans=$(($a+$b*$c))
echo $ans
ans1=$(($a*$b+$c))
echo $ans1
ans2=$(($c+$a/$b))
echo $ans2
ans3=$(($a%$b+$c))
echo $ans3
exp=0
dict[((exp++))]=$ans
dict[((exp++))]=$ans1
dict[((exp++))]=$ans2
dict[((exp++))]=$ans3
count=0
arr[((count++))]=${dict[0]}
arr[((count++))]=${dict[1]}
arr[((count++))]=${dict[2]}
arr[((count++))]=${dict[3]}

for (( i=0; i<4; i++ ))
do
	for (( j=0; j<4-$i-1; j++))
	do
		tempj=$(($j+1))
		if [ ${arr[j]} -lt ${arr[tempj]} ]
		then
			temp=${arr[j]}
			arr[j]=${arr[tempj]}
			arr[tempj]=$temp
		fi
	done
done
echo "Sorted array"${arr[@]}
