#!/bin/bash
sudo nmap -sW -reason $1 -p $2 --exclude-ports $3
