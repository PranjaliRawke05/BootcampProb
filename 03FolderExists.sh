#!/bin/bash -x

read folderName
if [ -d $folderName ]
then
	echo "Folder already exists"
else
	mkdir $folderName
fi
