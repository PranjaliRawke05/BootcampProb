#!/bin/bash -x

cat access.log | awk '{print $1}' | uniq -c | sort | grep "[30/Oct/2019:16:08:27 +0000]"| tail -4
