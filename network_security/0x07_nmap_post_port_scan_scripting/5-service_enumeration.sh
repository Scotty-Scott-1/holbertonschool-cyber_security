#!/bin/bash
nmap -sV -A -sC --script ssl-enum-ciphers smb-enum-domains $1 -oN service_enumeration_results.txt
