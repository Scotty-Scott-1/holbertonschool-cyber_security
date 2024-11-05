#!/bin/bash
sudo nmap -sM -reason -vv $1 -p 21,22,23,80,443 #http
