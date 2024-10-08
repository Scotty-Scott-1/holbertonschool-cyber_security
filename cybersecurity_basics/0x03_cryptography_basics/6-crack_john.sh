#!/bin/bash
john --format=raw-sha256 --wordlist=/usr/share/wordlists/rockyou.txt "$1"; john --show --format=raw-sha256 "$1" | awk -F':' {'print $2'} | sed '/^$/d' > 6-password.txt
