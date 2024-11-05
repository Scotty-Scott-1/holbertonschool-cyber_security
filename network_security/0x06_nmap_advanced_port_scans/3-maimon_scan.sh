#!/bin/bash
sudo nmap -sM -reason $1 -p 20,21,22,23,80,443
