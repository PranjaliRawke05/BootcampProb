#!/bin/bash -x

read day
read month

result="false"

if [ $month -ge 3 -a $month -le 6 ]
then
	limit=$((30 + ($month % 2)))
	if [ $day -ge 1 -a $day -le $limit ]
	then
		dt=$((($month*100)+day))
		if [ $dt -ge 320 -a $day -le 620 ]
		then
			result="true"
		fi
	fi
fi

echo $result
