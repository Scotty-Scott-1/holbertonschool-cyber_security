#!/bin/bash
pwgen "$1" 1 | tr -dc '[:alnum:]' | head -c"$1"
