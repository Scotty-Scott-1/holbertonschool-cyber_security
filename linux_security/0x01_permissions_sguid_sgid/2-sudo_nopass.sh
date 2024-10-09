#!/bin/bash
echo ""$1":test" | sudo chpasswd
sudo usermod -aG sudo "$1"
