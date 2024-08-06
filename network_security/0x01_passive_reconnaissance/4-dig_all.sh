#!/bin/bash
dig $1 ANY | awk '!/^;/'
