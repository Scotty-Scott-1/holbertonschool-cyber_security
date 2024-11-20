#!/bin/bash
grep -oP '"\w+\s(\S+)' "logs.txt" |sort|uniq -c|sort -nr|head -1|awk '{print $3}'
