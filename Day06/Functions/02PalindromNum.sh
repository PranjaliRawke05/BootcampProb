#!/bin/bash -x

function palindrome(){
	rem=0
	temp=$1
	rev=0
	while [ $temp -gt 0 ]
	do
		rem=$(($temp%10))
		temp=$(($temp/10))
		rev=$(($rev*10+$rem))
	done
	echo $rev
}
echo "Enter Number"
read num

result="$( palindrome $(($num)) )"

if [ $result -eq $num ]
then
	echo "No is  palindrome"
else
	echo "No is not palindrome"
fi






