#!/bin/bash
str=$(grep "new user: name=" auth.log|awk '{ print substr($8, 6) }'|sort|awk '{ printf $0 }'); echo "${str::-1}"
