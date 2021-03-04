#!/bin/bash

function degF(){
	DegF=$(echo "scale=2;((9/5)*$1)+32" |bc)
	echo $DegF
}
function degC(){
	DegC=$(echo "scale=2;(5/9)*($1-32)" |bc)
	echo $DegC
}
echo "degF = (degC * 9/5) + 32"
echo "degC = (degF – 32) * 5/9"
echo "Enter Chioce"
read ch

case $ch in
	1)
	echo "Enter temperature (C):"
        read TempC

	result="$( degF $(($TempC)) )"
	echo $result
	;;
	2)
	echo "Enter temperature (F):"
	read TempF

	res="$( degC $(($TempF)) )"
	echo $res
	;;
esac
