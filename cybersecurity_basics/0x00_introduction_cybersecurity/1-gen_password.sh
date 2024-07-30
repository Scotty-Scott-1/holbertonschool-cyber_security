#!/bin/bash
< /dev/urandom tr -dc '[:alnum:]' | fold -w "$1" | head 1
