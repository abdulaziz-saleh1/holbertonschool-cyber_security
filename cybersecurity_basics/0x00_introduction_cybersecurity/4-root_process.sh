#!/bin/bash
ps -u "$1" u | grep -vE '[[:space:]]0[[:space:]]+0[[:space:]]'
