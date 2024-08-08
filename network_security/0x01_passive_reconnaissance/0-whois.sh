#!/bin/bash
whois $1 | awk '/^(Registrant|Admin|Tech)/ {gsub(/:/, ",", $0); print $0}' > $1.csv
