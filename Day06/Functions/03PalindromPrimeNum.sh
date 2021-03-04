#!/bin/bash -x

function prime(){
	for (( i=2; i<=$1/2; i++ ))
	do
		if [ $(($1%$i)) -eq 0 ]
		then
			echo "1"
		fi
	done
}



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
primeresult="$( prime $(($num)) )"
palindromeResult="$( prime $(($result)) )"

if [ $primeresult -eq 1 ]
then
        echo "No is not prime"
else
        echo "No is prime"
fi

if [ $palindromeResult -eq 1 ]
then
	echo "palindrome no is not prime"
else
	echo "palindrome no is prime"
fi
