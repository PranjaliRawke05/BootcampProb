#!/bin/bash -x

cat access.log | awk -F\" '{print $2}' | awk '{print $2}'| sort | uniq -c | tail -4
