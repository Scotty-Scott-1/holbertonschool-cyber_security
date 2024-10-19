#!/bin/bash
sudo cat /etc/postfix/main.cf | grep '^smtpd_tls_security_level' || '^smtp_tls_security_level'
