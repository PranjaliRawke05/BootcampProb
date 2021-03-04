#!/bin/bash -x

echo "Enter first no:"
read a
echo "Enter second no:"
read b
echo "Enter third no:"
read c

op1=$(($a+$b$*$c))
op2=$(($a%$b+$c))
op3=$(($c+$a/$b))
op4=$(($a*$b+$c))

if [ $op1 -gt $op2 -a $op1 -gt $op3 -a $op1 -gt $op4 ]
then
	echo "expression a+b*c having maximum value"
elif [ $op2 -gt $op1 -a $op2 -gt $op3 -a $op2 -gt $op4 ]
then
	echo "expression a%b+c having maximum value"
elif [ $op3 -gt $op1 -a $op3 -gt $op2 -a $op3 -gt $op4 ]
then
	echo "expression c+a/b having maximum value"
else
	echo "expression a*b+c having maximum value"
fi

if [ $op1 -lt $op2 -a $op1 -lt $op3 -a $op1 -lt $op4 ]
then
        echo "expression a+b*c having minimum value"
elif [ $op2 -lt $op1 -a $op2 -lt $op3 -a $op2 -lt $op4 ]
then
        echo "expression a%b+c having minimum value"
elif [ $op3 -lt $op1 -a $op3 -lt $op2 -a $op3 -lt $op4 ]
then
        echo "expression c+a/b having minimum value"
else
        echo "expression a*b+c having minimum value"
fi

