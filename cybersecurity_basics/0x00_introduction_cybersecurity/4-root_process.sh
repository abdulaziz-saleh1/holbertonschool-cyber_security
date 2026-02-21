#!/bin/bash
ps aux | grep "^$1 " | grep -v '[[:space:]]0[[:space:]]\{1,\}0[[:space:]]'
