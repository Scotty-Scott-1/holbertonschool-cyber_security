#!/bin/bash
whois "$1" | awk '!/Registry Registrant ID/ && /Registrant/ {gsub(/:/, ",", $0); print $0} !/Registry Admin ID/ && /Admin/ {gsub(/:/, ",", $0); print $0} !/Registry Tech ID/ && /Tech/ {gsub(/:/, ",", $0); print $0}' > "$1".csv
