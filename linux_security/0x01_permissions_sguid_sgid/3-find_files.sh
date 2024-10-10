#!/bin/bash
find "$1" -perm /6000 -exec ls -l {} \;
