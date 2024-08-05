#!/bin/bash
whois "$1" | awk '!/Registry Registrant ID/ && /Registrant/ {gsub(/:/, ",", $0); print $0} /Admin/ {gsub(/:/, ",", $0); print $0} /Tech/ {gsub(/:/, ",", $0); print $0}' > "$1".csv
