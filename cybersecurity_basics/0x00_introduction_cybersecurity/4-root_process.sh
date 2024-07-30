#!/bin/bash
USER="$1"
ps aux | awk -v user="$USER"  '$1 == user { if ($5 > 0) { if ($6 > 0) print } }'
