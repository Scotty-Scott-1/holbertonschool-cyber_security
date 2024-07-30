#!/bin/bash
ps -u "$1" -o user,ppid,pid,vsz,rss,%mem,%cpu,start,time,stat,etime,cmd
