#!/bin/bash -x

cmp ~/bootcamp/linux-content/original/original.sh ~/bootcamp/linux-content/updated/updated-file.sh
cp -r original original-backup
cp ~/bootcamp/linux-content/updated/updated-file.sh ~/bootcamp/linux-content/original/original.sh
cmp ~/bootcamp/linux-content/original/original.sh ~/bootcamp/linux-content/updated/updated-file.sh


