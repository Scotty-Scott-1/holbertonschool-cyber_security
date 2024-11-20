#!/bin/bash
ip=$(grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' "logs.txt" |sort|uniq -c|sort -nr|head -1|awk '{print $2}')
grep -c $ip "logs.txt"
