#!/bin/bash
john --format=raw-md5 --wordlist=/usr/share/wordlists/rockyou.txt "$1"; john --show --format=raw-md5 "$1" | awk -F':' {'print $2'} | sed '/^$/d' > 4-password.txt
