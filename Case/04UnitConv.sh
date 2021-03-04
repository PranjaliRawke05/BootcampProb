#!/bin/bash

echo "Enter Length:"
read length

echo "Enter 1)Feet to Inch. 2)Feet to Meter. 3)Inch to Feet. 4)Meter to Feet."
read op

case $op in
	1)	inch=$(($length*12))
		echo $length"Feet ="$inch"inch"
	;;
	2)	meter=echo $(($length/3.281))
		echo $length"Feet ="$meter"Meter"
	;;
	3)	feet=$(($length/12))
		echo $length"Inch ="$feet"Feet"
	;;
	4)	Feet=$(($length*3.281))
		echo $length"Meter ="$Feet"Feet"
	;;
esac
