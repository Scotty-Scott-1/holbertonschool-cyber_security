#!/bin/bash
whois "$1" | awk '/Registrant/ {gsub(/:/, ",", $0); print $0} /Admin/ {gsub(/:/, ",", $0); print $0} /Tech/ {gsub(/:/, ",", $0); print $0}'
