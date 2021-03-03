#!/bin/bash -x

cat access.log | awk -F\" '{print $2}' | awk '{print $2}'| sort | uniq -c |grep "[30/Oct/2019:16:08:27 +0000]"| tail -4
