#!/bin/bash

echo "Enter number between 0 to 100"
read num
op=0
res=$num
num=$(($num/2))
while [ $op -eq 0 ]
do

if [ $num -lt $res ]
then
	echo "New Number is "$num
	echo "If Number found enter 0 and if not found enter 1"
	read option
	case $option in
		0)	op=1
		;;
		1)
			num=$(($num/2))
		;;
	esac
else
        echo "New Number is "$num
        echo "If Number found enter 0 and if not found enter 1"
        read opt
        case $opt in
                0)      op=1
                ;;
                1)
                        num=$(($num/2))
                ;;
	esac
fi
done
