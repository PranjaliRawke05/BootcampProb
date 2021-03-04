#!/bin/bash -x

declare -A die
c1=0
c2=0
c3=0
c4=0
c5=0
c6=0
flag=1

while [ $flag -eq 1 ]
do
die=$(((RANDOM%6)+1))

case $die in

	1)	c1=$(($c1+1))
		dict[1]=$c1
		;;
	2)	c2=$(($c2+1))
		dict[2]=$c2
		;;
	3)	c3=$(($c3+1))
		dict[3]=$c3
		;;
	4)	c4=$(($c4+1))
		dict[4]=$c4
		;;
	5)	c5=$(($c5+1))
		dict[5]=$c5
		;;
	6)	c6=$(($c6+1))
		dict[6]=$c6
		;;
esac

if [ $c1 -ge 10 -o $c2 -ge 10 -o $c3 -ge 10 -o $c4 -ge 10 -o $c5 -ge 10 -o $c6 -ge 10 ]
then
	flag=0
fi
done

max=${dict[1]}
min=${dict[1]}
maxkey=0
minkey=0
for (( i=1; i<7; i++ ))
do
	if [ ${dict[i]} -ge $max ]
	then
		max=${dict[i]}
		maxkey=$i
	fi
	if [ ${dict[i]} -le $min ]
	then
		min=${dict[i]}
		minkey=$i
	fi
done

echo ${dict[@]}
echo "The number reached Maximum times" $maxkey
echo "The number reached Minimum times" $minkey
