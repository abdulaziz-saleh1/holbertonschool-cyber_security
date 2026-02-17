#!/bin/bash
ps -u "$1" -o user,pid,%cpu,%mem,vsz,rss,tty,stat,start,time,args --no-headers | grep -v '[[:space:]]0[[:space:]][[:space:]]*0[[:space:]]'
