#!/bin/bash
sudo cat /etc/postfix/main.cf | grep '^smtpd_tls'
