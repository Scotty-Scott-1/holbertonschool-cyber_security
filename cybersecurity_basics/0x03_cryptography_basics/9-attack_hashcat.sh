#!/bin/bash
hashcat -a 1 -m 0 "$1" wordlist1.txt wordlist2.txt --force --show | awk -F':' {'print $2'} > 9-password.txt
