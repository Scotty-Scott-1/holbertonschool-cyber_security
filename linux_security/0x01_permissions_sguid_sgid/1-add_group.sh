#!/bin/bash
sudo groupadd "$1"
sudo chgrp "$1" "$2"
chmod g+rx "$2"
