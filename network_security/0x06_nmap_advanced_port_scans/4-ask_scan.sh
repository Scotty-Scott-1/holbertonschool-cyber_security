#!/bin/bash
sudo nmap -sA -reason --host-timeout 1000ms $1 -p $2
