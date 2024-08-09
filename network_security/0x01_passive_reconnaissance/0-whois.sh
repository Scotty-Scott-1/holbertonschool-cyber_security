#!/bin/bash
whois $1 | awk '/^(Registrant|Admin|Tech)/ {sub(/:/, ",", $0); print $0}' > $1.csv
