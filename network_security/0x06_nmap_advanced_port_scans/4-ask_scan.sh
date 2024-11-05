#!/bin/bash
sudo nmap -sA -reason --host-timeout 1s $1 -p $2
