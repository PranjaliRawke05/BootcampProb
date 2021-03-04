#!/bin/bash -x

echo "Enter start Number of range"
read start
echo "Enter end number of range"
read end


for (( j=$start; j<=$end; j++))
do
	for (( i=2; i<=$j/2; i++))
	do
        	if [ $(($j%$i)) -eq 0 ]
        	then
                	echo $j "not prime"
		else
			echo $j "is prime"
        	fi

	done
done

