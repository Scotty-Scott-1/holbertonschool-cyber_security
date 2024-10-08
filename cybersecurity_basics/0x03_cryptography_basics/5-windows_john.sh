#!/bin/bash
john --format=nt --wordlist=/usr/share/wordlists/rockyou.txt "$1"; john --show --format=nt "$1" | awk -F':' {'print $2'} | sed '/^$/d' > 5-password.txt
