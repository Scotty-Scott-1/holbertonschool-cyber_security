#!/bin/bash
sudo nmap -sX --packet-trace -d2 --open $1 -p 440-450
