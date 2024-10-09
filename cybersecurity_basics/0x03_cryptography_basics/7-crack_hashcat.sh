#!/bin/bash
hashcat -D 1 --hwmon-disable -a 0 -m 0 "$1" /usr/share/wordlists/rockyou.txt --show | awk -F':' {'print $2'} > 7-password.txt
