#!/bin/bash
find "$1" -type f -exec chmod o-xw {} \; -exec chmod o+r {} \;
