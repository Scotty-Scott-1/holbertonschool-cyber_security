#!/bin/bash
grep "from" auth.log | awk '{ for (i=1; i<NF; i++) if ($i == "from" ) print $(i+1) }' | awk '!seen[$0]++' | wc -l
