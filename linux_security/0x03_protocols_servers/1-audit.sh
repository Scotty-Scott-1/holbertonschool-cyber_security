#!/bin/bash
cat /etc/ssh/ssh_config | grep -Ev '^#|^$'
