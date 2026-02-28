#!/bin/bash
whois $1 | awk -F': ' '/^(Registrant|Admin|Tech)/{k=$1;v=$2;if(k~/Street$/)v=v" ";if(k~/Phone Ext$/||k~/Fax Ext$/)k=k":";a[++n]=k","v}END{for(i=1;i<=n;i++)printf "%s%s",a[i],(i<n?ORS:"")}' > $1.csv
