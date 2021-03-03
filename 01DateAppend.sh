#!/bin/bash -x
touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1
for file in `ls *.log.1`
do
	echo $file
        folderName=`echo $file | awk -F. '{print $1}'`
	echo $folderName
        currentdate=`date +'%d%m%Y'`
	filename="$folderName-$currentdate.log"
	echo $filename
	mv $file $filename
done
