#!/bin/bash -x

echo "Enter Number"
read n

har=0.0
for (( i=0; i<=$n; i++))
do
	har=$(($har+(1.0/$i))
done
echo "n series is:"$har

