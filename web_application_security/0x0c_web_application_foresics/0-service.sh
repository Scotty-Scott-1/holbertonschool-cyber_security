#!/bin/bash
awk '{ if ($5 ~ /^sshd/) print $6}' auth.log | sort|uniq -c|sort -nr
