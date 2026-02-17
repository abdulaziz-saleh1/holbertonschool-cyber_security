#!/bin/bash
ps -u "$1" u | grep -v '^USER' | grep -v '[[:space:]]0[[:space:]]\{1,\}0[[:space:]]'
