#!/bin/bash
find "$1" -perm /2000 -exec ls -l {} \; 2> /dev/null | awk '{print $9}'