#!/bin/bash
grep "new user: name=" auth.log|awk '{ print substr($8, 6) }'|sort|awk '{ printf $0 }' | sed s/.$//
