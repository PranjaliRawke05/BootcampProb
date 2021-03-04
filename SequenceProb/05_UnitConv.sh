#!/bin/bash -x

echo "Enter inches:"
read inches

feet=$(($inches/12))
echo $inches "in = " $feet "ft"

echo "rectangular plot area"
w=60.0
h=40.0

widthMtr=$(($w/3.281))
heightMtr=$(($h/3.281))
area=$(($widthMtr*$heightMtr))

echo "Rectangular plot of"$w"feet X"$h"feet in meters is"$area"meter"

allPlotArea=$(($area*25.0))
echo "Area of 25 such plots::"$allPlotArea



