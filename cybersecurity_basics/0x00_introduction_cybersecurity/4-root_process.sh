#!/bin/bash
ps aux | awk -v user="$1"  '$1 == user { if ($5 > 0) { if ($6 > 0) print } }'
