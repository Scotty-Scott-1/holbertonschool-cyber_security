#!/bin/bash
lsb_release -i | awk -F: '{print $2}' | xargs
