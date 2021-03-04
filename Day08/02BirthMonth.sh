#!/bin/bash -x

declare -A dict
declare -A countdict
c1=0; c2=0; c3=0; c4=0; c5=0; c6=0; c7=0; c8=0; c9=0; c10=0;c11=0; c12=0;
for (( i=1; i<=50; i++ ))
do	month=$(((RANDOM%10)+2))
	dict[$i]=$month
	case $month in
		1)	c1=$(($c1+1))	;;
		2)	c2=$(($c2+1))	;;
		3)	c3=$(($c3+1))	;;
		4)	c4=$(($c4+1))	;;
		5)	c5=$(($c5+1))	;;
		6)	c6=$(($c6+1))	;;
		7)	c7=$(($c7+1))	;;
		8)	c8=$(($c8+1))	;;
		9)	c9=$(($c9+1))	;;
		10)	c10=$(($c10+1))	;;
		11)	c11=$(($c11+1))	;;
		12)	c12=$(($c12+1))	;;
	esac
done

countdict["January"]=$c1
countdict["February"]=$c2
countdict["March"]=$c3
countdict["April"]=$c4
countdict["May"]=$c5
countdict["June"]=$c6
countdict["July"]=$c7
countdict["August"]=$c8
countdict["September"]=$c9
countdict["October"]=$c10
countdict["November"]=$c11
countdict["December"]=$c12

echo "count of individuals having birthdays in same month::::"
for key in ${!countdict[@]}
do
	echo ${key} "::" ${countdict[${key}]}
done
