#!/bin/bash -x

echo ""
cat data.csv | awk '$4>100000 {print $2 "\t\t" $3}'
echo ""
cat data.csv | grep CAPTAION | awk  '{sum=sum +$4}END{print sum}'
echo ""
cat data.csv | awk '$5>7000 && $5<10000{print $3 "\t\t\t" $5}'
echo ""
cat data.csv | awk  '{sum=sum +$4}END{print sum/NR}'




