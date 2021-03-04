#!/bin/bash

echo "Enter three inputs"
read a
read b
read c

ans=$(($a+$b*$c))
echo $ans
