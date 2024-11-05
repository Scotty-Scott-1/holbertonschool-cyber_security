#!/bin/bash
sudo nmap -sM -reason $1 -p 21,22,23,80,443
